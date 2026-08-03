// Agent 模式设置页
// 本地自主任务执行子系统配置（与现有语音助手完全隔离）
// ENABLED=false 时 agent 子系统不会被加载，现有 app 行为零变化
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../../theme"
import "../../controls"

ScrollView {
    id: root
    clip: true

    ColumnLayout {
        width: root.availableWidth
        spacing: Theme.spacingLg

        // 页面标题
        Text {
            text: "Agent 模式"
            font.pixelSize: Theme.fontSizeXl
            font.weight: Font.DemiBold
            color: Theme.textPrimary
        }

        // 说明文字
        Text {
            Layout.fillWidth: true
            text: "开启后，AI 可在沙箱目录内自主执行 Shell、读写编辑文件、本地 Git 与 GitHub 操作（PR/Issue 等）。与现有语音助手完全隔离，关闭时现有功能零影响。"
            font.pixelSize: Theme.fontSizeSm
            color: Theme.textSecondary
            wrapMode: Text.Wrap
        }

        // 总开关区域
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "总开关"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            GridLayout {
                Layout.fillWidth: true
                columns: 2
                rowSpacing: Theme.spacingMd
                columnSpacing: Theme.spacingLg

                Text {
                    text: "启用 Agent 模式"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XSwitch {
                    checked: settingsModel ? settingsModel.agentModeEnabled : false
                    onToggled: if (settingsModel) settingsModel.agentModeEnabled = checked
                }

                Text {
                    text: "破坏性操作确认"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XSwitch {
                    checked: settingsModel ? settingsModel.agentConfirmDestructive : true
                    onToggled: if (settingsModel) settingsModel.agentConfirmDestructive = checked
                }

                Text {
                    text: "代码验证护栏"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XSwitch {
                    checked: settingsModel ? settingsModel.agentVerifyEnabled : true
                    onToggled: if (settingsModel) settingsModel.agentVerifyEnabled = checked
                }
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // LLM 配置区域
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "LLM 大脑"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            GridLayout {
                Layout.fillWidth: true
                columns: 2
                rowSpacing: Theme.spacingMd
                columnSpacing: Theme.spacingLg

                Text {
                    text: "API 地址"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                TextField {
                    id: llmBaseUrlField
                    Layout.fillWidth: true
                    text: settingsModel ? settingsModel.agentLlmBaseUrl : ""
                    onEditingFinished: if (settingsModel) settingsModel.agentLlmBaseUrl = text
                    placeholderText: "https://open.bigmodel.cn/api/paas/v4/"
                    font.pixelSize: Theme.fontSizeSm
                    background: Rectangle {
                        radius: Theme.radiusSm
                        color: Theme.backgroundSecondary
                        border.color: llmBaseUrlField.activeFocus ? Theme.primary : "transparent"
                    }
                }

                Text {
                    text: "API Key"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XTextField {
                    id: llmApiKeyField
                    Layout.fillWidth: true
                    text: settingsModel ? settingsModel.agentLlmApiKey : ""
                    onEditingFinished: if (settingsModel) settingsModel.agentLlmApiKey = text
                    isPassword: true
                    placeholderText: "sk-..."
                }

                Text {
                    text: "模型"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                TextField {
                    id: llmModelField
                    Layout.fillWidth: true
                    text: settingsModel ? settingsModel.agentLlmModel : ""
                    onEditingFinished: if (settingsModel) settingsModel.agentLlmModel = text
                    placeholderText: "glm-4.6"
                    font.pixelSize: Theme.fontSizeSm
                    background: Rectangle {
                        radius: Theme.radiusSm
                        color: Theme.backgroundSecondary
                        border.color: llmModelField.activeFocus ? Theme.primary : "transparent"
                    }
                }
            }

            Text {
                Layout.fillWidth: true
                text: "可切换：智谱 glm-4.6（默认）/ glm-4-flash（免费）/ DeepSeek（deepseek-chat）。仅支持 OpenAI 兼容接口。"
                font.pixelSize: Theme.fontSizeXs
                color: Theme.textPlaceholder
                wrapMode: Text.Wrap
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // 工作沙箱目录区域
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "工作沙箱目录"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            GridLayout {
                Layout.fillWidth: true
                columns: 2
                rowSpacing: Theme.spacingMd
                columnSpacing: Theme.spacingLg

                Text {
                    text: "目录路径"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                TextField {
                    id: workspaceRootField
                    Layout.fillWidth: true
                    text: settingsModel ? settingsModel.agentWorkspaceRoot : ""
                    onEditingFinished: if (settingsModel) settingsModel.agentWorkspaceRoot = text
                    placeholderText: "留空 = 默认沙箱（用户数据目录/agent_workspace）"
                    font.pixelSize: Theme.fontSizeSm
                    background: Rectangle {
                        radius: Theme.radiusSm
                        color: Theme.backgroundSecondary
                        border.color: workspaceRootField.activeFocus ? Theme.primary : "transparent"
                    }
                }
            }

            Text {
                Layout.fillWidth: true
                text: "AI 只能在此目录内读写代码。留空使用默认沙箱目录。请将待处理的代码 clone/拷贝进此目录。"
                font.pixelSize: Theme.fontSizeXs
                color: Theme.textPlaceholder
                wrapMode: Text.Wrap
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // GitHub 配置区域
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "GitHub 远程操作"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            GridLayout {
                Layout.fillWidth: true
                columns: 2
                rowSpacing: Theme.spacingMd
                columnSpacing: Theme.spacingLg

                Text {
                    text: "鉴权模式"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XComboBox {
                    id: githubAuthCombo
                    Layout.preferredWidth: 160
                    model: ["pat", "disabled"]
                    currentIndex: settingsModel && settingsModel.agentGithubAuthMode === "disabled" ? 1 : 0
                    onActivated: function(index) {
                        if (settingsModel) settingsModel.agentGithubAuthMode = index === 1 ? "disabled" : "pat"
                    }
                    font.pixelSize: Theme.fontSizeSm
                }

                Text {
                    text: "Token"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 100
                }
                XTextField {
                    id: githubTokenField
                    Layout.fillWidth: true
                    text: settingsModel ? settingsModel.agentGithubToken : ""
                    onEditingFinished: if (settingsModel) settingsModel.agentGithubToken = text
                    isPassword: true
                    placeholderText: "ghp_...（Personal Access Token）"
                }
            }

            Text {
                Layout.fillWidth: true
                text: "PAT 写入配置后由 agent 直调 GitHub REST API（无需安装 gh CLI）。Token 落盘将加 0600 权限并在审计日志/工具返回中 mask。选 disabled 则仅支持本地 git。"
                font.pixelSize: Theme.fontSizeXs
                color: Theme.textPlaceholder
                wrapMode: Text.Wrap
            }
        }

        Item { Layout.fillHeight: true }
    }
}
