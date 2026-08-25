// 声纹识别设置页
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
            text: "声纹识别"
            font.pixelSize: Theme.fontSizeXl
            font.weight: Font.DemiBold
            color: Theme.textPrimary
        }

        // 基本设置
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "基本设置"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            // 启用声纹识别
            RowLayout {
                Layout.fillWidth: true
                spacing: Theme.spacingMd

                Text {
                    text: "启用声纹识别"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                }

                Item { Layout.fillWidth: true }

                XSwitch {
                    checked: settingsModel ? settingsModel.speakerIdEnabled : true
                    onToggled: if (settingsModel) settingsModel.speakerIdEnabled = checked
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: 1
                color: Theme.divider
            }

            // 主人名字
            RowLayout {
                Layout.fillWidth: true
                spacing: Theme.spacingMd

                Text {
                    text: "主人称呼"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 80
                }

                Text {
                    text: settingsModel ? settingsModel.speakerOwnerName : "主人"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textPrimary
                    Layout.fillWidth: true
                }
            }

            // 已注册状态
            Rectangle {
                Layout.fillWidth: true
                height: statusLayout.height + 20
                color: Theme.backgroundSecondary
                radius: Theme.radiusSm

                ColumnLayout {
                    id: statusLayout
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: Theme.spacingMd
                    spacing: 4

                    Text {
                        text: "已注册人物"
                        font.pixelSize: Theme.fontSizeXs
                        color: Theme.textPlaceholder
                    }

                    Text {
                        Layout.fillWidth: true
                        text: {
                            if (!settingsModel) return ""
                            var n = settingsModel.speakerRegisteredCount
                            var names = settingsModel.speakerRegisteredNames
                            if (n === 0) return "未注册（下次对话将自动学习）"
                            return n + " 人：" + names
                        }
                        font.pixelSize: Theme.fontSizeSm
                        color: Theme.textPrimary
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // 识别参数
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "识别参数"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: Theme.spacingMd

                Text {
                    text: "识别阈值"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textSecondary
                    Layout.preferredWidth: 80
                }

                Slider {
                    id: thresholdSlider
                    Layout.fillWidth: true
                    from: 0.3
                    to: 0.8
                    stepSize: 0.05
                    value: settingsModel ? settingsModel.speakerIdThreshold : 0.55
                    onMoved: if (settingsModel) settingsModel.speakerIdThreshold = value
                }

                Text {
                    text: thresholdSlider.value.toFixed(2)
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textPrimary
                    Layout.preferredWidth: 40
                }
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // 重置区域
        ColumnLayout {
            Layout.fillWidth: true
            spacing: Theme.spacingMd

            Text {
                text: "重置声纹"
                font.pixelSize: Theme.fontSizeMd
                font.weight: Font.Medium
                color: Theme.textSecondary
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: Theme.spacingMd

                Text {
                    Layout.fillWidth: true
                    text: "清空已注册的声纹档案，下次对话时重新学习主人声纹"
                    font.pixelSize: Theme.fontSizeSm
                    color: Theme.textPlaceholder
                    wrapMode: Text.WordWrap
                }

                Button {
                    id: resetBtn
                    text: "重置声纹"
                    implicitHeight: 36
                    implicitWidth: 100

                    contentItem: Text {
                        text: resetBtn.text
                        font.pixelSize: Theme.fontSizeSm
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        radius: Theme.radiusSm
                        color: resetBtn.pressed ? Theme.error : (resetBtn.hovered ? Theme.errorHover : Theme.error)
                    }

                    enabled: settingsModel && settingsModel.speakerRegisteredCount > 0
                    onClicked: {
                        // 先通知 AudioPlugin 重置运行中的管理器
                        if (eventBridge) eventBridge.resetSpeakerProfile()
                        // 再删除磁盘档案并刷新 UI
                        if (settingsModel) settingsModel.resetSpeakerProfile()
                    }
                }
            }
        }

        // 分隔线
        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: Theme.divider
        }

        // 提示信息
        Text {
            Layout.fillWidth: true
            text: "声纹识别在本地运行，不会上传任何音频。首次使用时说 3 句话即可注册主人声纹。识别阈值越低越宽松（更易识别为已注册的人），越高越严格。"
            font.pixelSize: Theme.fontSizeSm
            color: Theme.textPlaceholder
            wrapMode: Text.WordWrap
        }

        Item { Layout.fillHeight: true }
    }
}
