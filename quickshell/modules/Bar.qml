import Quickshell
import Quickshell.Hyprland
import QtQuick

Scope {
    id: root
    Variants {
        model: Quickshell.screens
        PanelWindow {
            required property ShellScreen modelData
            screen: modelData

            color: "#1E1E2E"

            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 32
            Grid {
                rows: 1
                columns: 10
                Repeater {
                    model: Hyprland.workspaces
                    delegate: Rectangle {
                        required property HyprlandWorkspace modelData
                        color: "#fff"
                        implicitHeight: 32
                        implicitWidth: 32
                        Text {
                            color: "#000"
                            anchors.centerIn: parent
                            text: parent.modelData.id
                        }
                    }
                }
            }
        }
    }
}
