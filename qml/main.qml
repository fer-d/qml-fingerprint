import QtQuick 2.0

Rectangle {
    id: mainWindow
    width: 560
    height: 255
    color: "#0f0f1e"

    Column {
        id: menuColumn
        x: 6
        y: 8
        width: 165
        height: 204
        smooth: welcomeMouseArea.containsMouse

        Rectangle {
            id: handsButton
            x: 0
            width: 165
            height: 30
            color: "#035567"
            radius: 5
            opacity: 0.6
            anchors.top: scanButton.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 1
            z: 2
            border.color: "#04d7d7"

            Text {
                id: handsText
                x: 70
                y: 8
                width: 68
                height: 14
                color: "#ffffff"
                text: qsTr("PRINTS")
                font.family: "Courier"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                transformOrigin: Item.Center
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 19
            }

            MouseArea {
                id: handsMouseArea
                anchors.fill: parent
                hoverEnabled: true
            }

            states: State {
                name: "hover"
                when: handsMouseArea.containsMouse
                PropertyChanges {
                    target: handsButton
                    opacity: 1.0
                }
            }

            transitions: [ Transition {
                from: ""
                to: "hover"
                animations: NumberAnimation {
                    target: handsButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            },
            Transition {
                from: "hover"
                to: ""
                animations: NumberAnimation {
                    target: handsButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }]
        }

        Rectangle {
            id: scanButton
            x: 0
            width: 165
            height: 30
            color: "#035567"
            radius: 5
            opacity: 0.6
            anchors.top: welcomeButton.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 1
            z: 2
            border.color: "#04d7d7"

            Text {
                id: scanText
                x: 70
                y: 8
                width: 46
                height: 14
                color: "#ffffff"
                text: qsTr("SCAN")
                font.family: "Courier"
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                transformOrigin: Item.Center
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 19
            }

            MouseArea {
                id: scanMouseArea
                anchors.fill: parent
                hoverEnabled: true
            }

            states: State {
                name: "hover"
                when: scanMouseArea.containsMouse
                PropertyChanges {
                    target: scanButton
                    opacity: 1.0
                }
            }

            transitions: [ Transition {
                from: ""
                to: "hover"
                animations: NumberAnimation {
                    target: scanButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            },
            Transition {
                from: "hover"
                to: ""
                animations: NumberAnimation {
                    target: scanButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }]
        }

        Rectangle {
            id: settingsButton
            x: -8
            y: -7
            width: 165
            height: 30
            color: "#035567"
            radius: 5
            anchors.bottom: aboutButton.top
            anchors.bottomMargin: 5
            opacity: 0.6
            border.width: 1
            border.color: "#04d7d7"
            anchors.horizontalCenter: parent.horizontalCenter
            z: 2
            Text {
                id: settingsText
                x: 70
                y: 8
                width: 86
                height: 14
                color: "#ffffff"
                text: qsTr("SETTINGS")
                font.bold: true
                font.family: "Courier"
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                transformOrigin: Item.Center
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 19
            }

            MouseArea {
                id: settingsMouseArea
                anchors.fill: parent
                hoverEnabled: true
            }

            states: State {
                name: "hover"
                when: settingsMouseArea.containsMouse
                PropertyChanges {
                    target: settingsButton
                    opacity: 1.0
                }
            }

            transitions: [ Transition {
                from: ""
                to: "hover"
                animations: NumberAnimation {
                    target: settingsButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            },
            Transition {
                from: "hover"
                to: ""
                animations: NumberAnimation {
                    target: settingsButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }]
        }

        Rectangle {
            id: aboutButton
            x: -11
            y: -1
            width: 165
            height: 30
            color: "#035568"
            radius: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            opacity: 0.6
            border.width: 1
            border.color: "#04d7d7"
            anchors.horizontalCenter: parent.horizontalCenter
            z: 2
            Text {
                id: aboutText
                x: 70
                y: 8
                width: 58
                height: 14
                color: "#ffffff"
                text: qsTr("ABOUT")
                font.bold: true
                font.family: "Courier"
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                transformOrigin: Item.Center
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 19
            }

            MouseArea {
                id: aboutMouseArea
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 1
                anchors.topMargin: 0
                anchors.fill: parent
                hoverEnabled: true
            }

            states: State {
                name: "hover"
                when: aboutMouseArea.containsMouse
                PropertyChanges {
                    target: aboutButton
                    opacity: 1.0
                }
            }

            transitions: [ Transition {
                from: ""
                to: "hover"
                animations: NumberAnimation {
                    target: aboutButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            },
            Transition {
                from: "hover"
                to: ""
                animations: NumberAnimation {
                    target: aboutButton
                    property: "opacity"
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }]
        }


    }

    Column {
        id: contentColumn
        x: 180
        y: 8
        width: 372
        height: 240
    }

    Column {
        id: statusColumn
        x: 8
        y: 218
        width: 166
        height: 30
    }
}
