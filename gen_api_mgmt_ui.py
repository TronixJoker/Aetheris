#!/usr/bin/env python3
"""Generate minimal API Management UI insert for SettingsScreen.

Produces:
1. _api_mgmt_insert.txt - Insertion block for SettingsScreen$9.invoke (Text header "API 管理" + descriptive text)

This is a minimal, low-risk insertion that adds an "API 管理" section header
to the SettingsScreen. The actual API configuration is handled by ConfigManager (Task 1).
"""

INSERT_BLOCK = r'''
    .line 460
    const-string v4, "API \u7ba1\u7406"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, p2

    const/16 v26, 0x6

    const/16 v27, 0x0

    const v28, 0x1fffe

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 461
    const-string v4, "weather / news / bilibili-search / stock / music / translate / wiki \u7b4914\u4e2aAPI\u5df2\u7eb3\u5165ConfigManager\u7ba1\u7406"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, p2

    const/16 v26, 0x6

    const/16 v27, 0x0

    const v28, 0x1fffe

    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
'''


def main():
    insert_path = "/workspace/_api_mgmt_insert.txt"
    with open(insert_path, 'w') as f:
        f.write(INSERT_BLOCK)
    print(f"[OK] Wrote {insert_path}")


if __name__ == "__main__":
    main()
