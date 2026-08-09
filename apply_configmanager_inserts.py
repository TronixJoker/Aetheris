#!/usr/bin/env python3
"""Surgically insert generated smali code blocks into ConfigManager.smali."""
import re
import sys
from pathlib import Path

INSERTS_FILE = Path("/workspace/_configmanager_inserts.txt")
TARGET_FILE = Path("/workspace/apk_decoded/smali_classes2/com/xiaozhi/android/config/ConfigManager.smali")


def parse_sections(text):
    sections = {}
    current_name = None
    current_lines = []
    for line in text.splitlines(keepends=True):
        m = re.match(r"^=====\s*(\w+)\s*=====\s*$", line.rstrip())
        if m:
            if current_name is not None:
                sections[current_name] = "".join(current_lines)
            current_name = m.group(1)
            current_lines = []
        else:
            if current_name is not None:
                current_lines.append(line)
    if current_name is not None:
        sections[current_name] = "".join(current_lines)
    return sections


def strip_leading_trailing_blank(s):
    # remove leading blank lines
    lines = s.splitlines()
    while lines and lines[0].strip() == "":
        lines.pop(0)
    while lines and lines[-1].strip() == "":
        lines.pop()
    return "\n".join(lines) + "\n"


def ensure_trailing_nl(s):
    if not s.endswith("\n"):
        s = s + "\n"
    return s


def main():
    inserts_text = INSERTS_FILE.read_text()
    sections = parse_sections(inserts_text)

    target_lines = TARGET_FILE.read_text().splitlines(keepends=True)

    # We'll work with the entire file as a single string and use split/join.
    target = TARGET_FILE.read_text()

    # --- 1. Insert KEY_FIELDS before "# instance fields" ---
    key_fields = strip_leading_trailing_blank(sections["KEY_FIELDS"])
    marker_if = "# instance fields"
    idx = target.find(marker_if)
    if idx < 0:
        print("ERROR: marker '# instance fields' not found", file=sys.stderr)
        sys.exit(1)
    # back up to start of line (the marker is on its own line typically preceded by blank lines)
    # find the start of the line containing the marker
    line_start = target.rfind("\n", 0, idx) + 1
    # Insert fields block + 2 blank lines before the marker
    insertion = ensure_trailing_nl(key_fields) + "\n\n"
    target = target[:line_start] + insertion + target[line_start:]
    print(f"[OK] Inserted KEY_FIELDS ({len(key_fields.splitlines())} lines) before '# instance fields'")

    # --- 2. Insert CLINIT_REGS before the return-void of <clinit> ---
    clinit_regs = strip_leading_trailing_blank(sections["CLINIT_REGS"])
    # Find <clinit> method, then its return-void
    clinit_idx = target.find(".method static constructor <clinit>()V")
    if clinit_idx < 0:
        print("ERROR: <clinit> method not found", file=sys.stderr)
        sys.exit(1)
    end_idx = target.find(".end method", clinit_idx)
    if end_idx < 0:
        print("ERROR: <clinit> .end method not found", file=sys.stderr)
        sys.exit(1)
    # Find last 'return-void' before .end method
    rv_idx = target.rfind("return-void", clinit_idx, end_idx)
    if rv_idx < 0:
        print("ERROR: return-void in <clinit> not found", file=sys.stderr)
        sys.exit(1)
    line_start = target.rfind("\n", 0, rv_idx) + 1
    insertion = ensure_trailing_nl(clinit_regs) + "\n"
    target = target[:line_start] + insertion + target[line_start:]
    print(f"[OK] Inserted CLINIT_REGS ({len(clinit_regs.splitlines())} lines) before return-void in <clinit>")

    # --- 3. Insert ACCESS_BRIDGES before "# virtual methods" ---
    access_bridges = strip_leading_trailing_blank(sections["ACCESS_BRIDGES"])
    marker_vm = "# virtual methods"
    idx = target.find(marker_vm)
    if idx < 0:
        print("ERROR: marker '# virtual methods' not found", file=sys.stderr)
        sys.exit(1)
    line_start = target.rfind("\n", 0, idx) + 1
    insertion = ensure_trailing_nl(access_bridges) + "\n\n"
    target = target[:line_start] + insertion + target[line_start:]
    print(f"[OK] Inserted ACCESS_BRIDGES ({len(access_bridges.splitlines())} lines) before '# virtual methods'")

    # --- 4. Append GETTER_METHODS and SETTER_METHODS at end of file ---
    getters = strip_leading_trailing_blank(sections["GETTER_METHODS"])
    setters = strip_leading_trailing_blank(sections["SETTER_METHODS"])
    target = target.rstrip() + "\n\n"
    target += ensure_trailing_nl(getters) + "\n"
    target += ensure_trailing_nl(setters)
    print(f"[OK] Appended GETTER_METHODS ({len(getters.splitlines())} lines) and SETTER_METHODS ({len(setters.splitlines())} lines) at end")

    TARGET_FILE.write_text(target)
    print(f"\n[SUCCESS] Wrote {TARGET_FILE}")
    print(f"Total lines now: {len(target.splitlines())}")


if __name__ == "__main__":
    main()
