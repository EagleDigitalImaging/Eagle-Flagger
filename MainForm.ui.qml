/*
 Copyright (C) 2017 - Eagle Digital Imaging, Inc.
    This file is part of Flagger.

    Flagger is free software: you can redistribute it and/or modify
    it under the terms of the Lesser GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Flagger is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    Lesser GNU General Public License for more details.

    You should have received a copy of the Lesser GNU General Public License
    along with Flagger.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.5
import QtQuick.Controls 2.0

Rectangle {
    id: rectangle13

    width: MainForm.width
    height: MainForm.height
    color: "#748595"
    property alias accuracyLabel: accuracyLabel
    property alias accuracyText: accuracyText
    property alias farmText: farmText
    property alias loginScreenVersionNumber: loginScreenVersionNumber
    property alias eagleText: eagleText
    property alias verifyScreenEnterButtonMouse: verifyScreenEnterButtonMouse
    property alias verifyScreenEnterButtonText: verifyScreenEnterButtonText
    property alias verifyScreenEnterButtonBox: verifyScreenEnterButtonBox
    property alias verifyScreenTextInput: verifyScreenTextInput
    property alias verifyScreenTextInputBox: verifyScreenTextInputBox
    property alias verifyScreenCodeText: verifyScreenCodeText
    property alias verifyScreenFlaggerAppText: verifyScreenFlaggerAppText
    property alias verifyScreenBackground: verifyScreenBackground
    property alias loginScreenCancelButtonMouse: loginScreenCancelButtonMouse
    property alias loginScreenCancelButtonText: loginScreenCancelButtonText
    property alias loginScreenCancelButtonBox: loginScreenCancelButtonBox
    property alias loginScreenLowerTextInput: loginScreenLowerTextInput
    property alias loginScreenLowerTextInputBox: loginScreenLowerTextInputBox
    property alias loginScreenFarmText: loginScreenFarmText
    property alias loginScreenMiddleTextInput: loginScreenMiddleTextInput
    property alias loginScreenMiddleTextInputBox: loginScreenMiddleTextInputBox
    property alias loginScreenTopTextInput: loginScreenTopTextInput
    property alias loginScreenTopTextInputBox: loginScreenTopTextInputBox
    property alias loginScreenEnterButtonText: loginScreenEnterButtonText
    property alias loginScreenEnterButtonMouse: loginScreenEnterButtonMouse
    property alias loginScreenEnterButtonBox: loginScreenEnterButtonBox
    property alias loginScreenPasswordText: loginScreenPasswordText
    property alias loginScreenNameText: loginScreenNameText
    property alias loginScreenBackground: loginScreenBackground
    property alias editImage: editImage
    property alias editImageMouse: editImageMouse
    property alias editImageBox: editImageBox
    property alias upperRightButtonNoButtonText: upperRightButtonNoButtonText
    property alias upperRightButtonNoButtonMouse: upperRightButtonNoButtonMouse
    property alias upperRightButtonNoButtonBox: upperRightButtonNoButtonBox
    property alias upperRightButtonYesButtonText: upperRightButtonYesButtonText
    property alias upperRightButtonYesButtonMouse: upperRightButtonYesButtonMouse
    property alias upperRightButtonYesButtonBox: upperRightButtonYesButtonBox
    property alias upperLeftButtonNoButtonText: upperLeftButtonNoButtonText
    property alias upperLeftButtonNoButtonMouse: upperLeftButtonNoButtonMouse
    property alias upperLeftButtonNoButtonBox: upperLeftButtonNoButtonBox
    property alias upperLeftButtonYesButtonText: upperLeftButtonYesButtonText
    property alias upperLeftButtonYesButtonMouse: upperLeftButtonYesButtonMouse
    property alias upperLeftButtonYesButtonBox: upperLeftButtonYesButtonBox
    property alias middleRightButtonNoButtonText: middleRightButtonNoButtonText
    property alias middleRightButtonNoButtonMouse: middleRightButtonNoButtonMouse
    property alias middleRightButtonNoButtonBox: middleRightButtonNoButtonBox
    property alias middleRightButtonYesButtonText: middleRightButtonYesButtonText
    property alias middleRightButtonYesButtonMouse: middleRightButtonYesButtonMouse
    property alias middleRightButtonYesButtonBox: middleRightButtonYesButtonBox
    property alias middleLeftButtonNoButtonText: middleLeftButtonNoButtonText
    property alias middleLeftButtonNoButtonMouse: middleLeftButtonNoButtonMouse
    property alias middleLeftButtonNoButtonBox: middleLeftButtonNoButtonBox
    property alias middleLeftButtonYesButtonText: middleLeftButtonYesButtonText
    property alias middleLeftButtonYesButtonMouse: middleLeftButtonYesButtonMouse
    property alias middleLeftButtonYesButtonBox: middleLeftButtonYesButtonBox
    property alias lowerLeftButtonYesButtonMouse: lowerLeftButtonYesButtonMouse
    property alias lowerLeftButtonYesButtonText: lowerLeftButtonYesButtonText
    property alias lowerLeftButtonYesButtonBox: lowerLeftButtonYesButtonBox
    property alias lowerLeftButtonNoButtonMouse: lowerLeftButtonNoButtonMouse
    property alias lowerLeftButtonNoButtonText: lowerLeftButtonNoButtonText
    property alias lowerLeftButtonNoButtonBox: lowerLeftButtonNoButtonBox
    property alias lowerRightButtonYesButtonText: lowerRightButtonYesButtonText
    property alias lowerRightButtonYesButtonMouse: lowerRightButtonYesButtonMouse
    property alias lowerRightButtonYesButtonBox: lowerRightButtonYesButtonBox
    property alias lowerRightButtonNoButtonText: lowerRightButtonNoButtonText
    property alias lowerRightButtonNoButtonMouse: lowerRightButtonNoButtonMouse
    property alias lowerRightButtonNoButtonBox: lowerRightButtonNoButtonBox
    property alias otherScreenCancelButtonMouse: otherScreenCancelButtonMouse
    property alias otherScreenCancelButtonText: otherScreenCancelButtonText
    property alias otherScreenCancelButtonBox: otherScreenCancelButtonBox
    property alias otherScreenOkButtonMouse: otherScreenOkButtonMouse
    property alias otherScreenOkButtonText: otherScreenOkButtonText
    property alias otherScreenOkButtonBox: otherScreenOkButtonBox
    property alias otherScreenText: otherScreenText
    property alias otherScreenTextInput: otherScreenTextInput
    property alias otherScreenTextInputBox: otherScreenTextInputBox
    property alias otherScreenBackground: otherScreenBackground
    property alias editModeLoginButtonMouse: editModeLoginButtonMouse
    property alias editModeLoginButtonText: editModeLoginButtonText
    property alias editModeLoginButtonBox: editModeLoginButtonBox
    property alias statusBoxEditModeText: statusBoxEditModeText
    property alias editModeSaveButtonMouse: editModeSaveButtonMouse
    property alias editModeSaveButtonText: editModeSaveButtonText
    property alias editModeSaveButtonBox: editModeSaveButtonBox
    property alias editModeCancelButtonMouse: editModeCancelButtonMouse
    property alias editModeCancelButtonText: editModeCancelButtonText
    property alias editModeCancelButtonBox: editModeCancelButtonBox
    property alias statusBoxText: statusBoxText
    property alias statusBox: statusBox
    property alias upperRightButtonEditMouse: upperRightButtonEditMouse
    property alias upperRightButtonEditTextInput: upperRightButtonEditTextInput
    property alias upperRightButtonEditBox: upperRightButtonEditBox
    property alias upperRightButtonText: upperRightButtonText
    property alias upperRightButtonMouse: upperRightButtonMouse
    property alias upperRightButtonBox: upperRightButtonBox
    property alias upperLeftButtonEditMouse: upperLeftButtonEditMouse
    property alias upperLeftButtonEditTextInput: upperLeftButtonEditTextInput
    property alias upperLeftButtonEditBox: upperLeftButtonEditBox
    property alias upperLeftButtonText: upperLeftButtonText
    property alias upperLeftButtonMouse: upperLeftButtonMouse
    property alias upperLeftButtonBox: upperLeftButtonBox
    property alias middleRightButtonEditMouse: middleRightButtonEditMouse
    property alias middleRightButtonEditTextInput: middleRightButtonEditTextInput
    property alias middleRightButtonEditBox: middleRightButtonEditBox
    property alias middleRightButtonText: middleRightButtonText
    property alias middleRightButtonMouse: middleRightButtonMouse
    property alias middleRightButtonBox: middleRightButtonBox
    property alias middleLeftButtonEditMouse: middleLeftButtonEditMouse
    property alias middleLeftButtonEditTextInput: middleLeftButtonEditTextInput
    property alias middleLeftButtonEditBox: middleLeftButtonEditBox
    property alias middleLeftButtonText: middleLeftButtonText
    property alias middleLeftButtonMouse: middleLeftButtonMouse
    property alias middleLeftButtonBox: middleLeftButtonBox
    property alias lowerRightButtonText: lowerRightButtonText
    property alias lowerRightButtonMouse: lowerRightButtonMouse
    property alias lowerRightButtonBox: lowerRightButtonBox
    property alias lowerLeftButtonEditMouse: lowerLeftButtonEditMouse
    property alias lowerLeftButtonEditTextInput: lowerLeftButtonEditTextInput
    property alias lowerLeftButtonEditBox: lowerLeftButtonEditBox
    property alias lowerLeftButtonBox: lowerLeftButtonBox
    property alias lowerLeftButtonText: lowerLeftButtonText
    property alias lowerLeftButtonMouse: lowerLeftButtonMouse
    visible: true
    clip: false

    Rectangle {
        id: lowerLeftButtonBox
        x: -240
        y: 75
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2

        MouseArea {
            id: lowerLeftButtonMouse
            anchors.fill: parent

            Text {
                id: lowerLeftButtonText
                color: "#ffffff"
                text: "Thistle"
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 22
            }

            Rectangle {
                id: lowerLeftButtonEditBox
                x: 45
                y: 50
                width: 150
                height: 50
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: lowerLeftButtonEditTextInput
                    text: qsTr("Text Input")
                    passwordCharacter: ""
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }

                MouseArea {
                    id: lowerLeftButtonEditMouse
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: lowerRightButtonBox
        x: 0
        y: 75
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2
        visible: true

        MouseArea {
            id: lowerRightButtonMouse
            anchors.fill: parent

            Text {
                id: lowerRightButtonText
                color: "#ffffff"
                text: qsTr("Other")
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }
        }
    }

    Rectangle {
        id: middleLeftButtonBox
        x: -240
        y: -75
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2

        MouseArea {
            id: middleLeftButtonMouse
            anchors.fill: parent

            Text {
                id: middleLeftButtonText
                color: "#ffffff"
                text: qsTr("Slugs")
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }

            Rectangle {
                id: middleLeftButtonEditBox
                x: 45
                y: 50
                width: 150
                height: 50
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: middleLeftButtonEditTextInput
                    text: qsTr("Text Input")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }

                MouseArea {
                    id: middleLeftButtonEditMouse
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: middleRightButtonBox
        x: 0
        y: -75
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2

        MouseArea {
            id: middleRightButtonMouse
            anchors.fill: parent

            Text {
                id: middleRightButtonText
                color: "#ffffff"
                text: qsTr("Brome")
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }

            Rectangle {
                id: middleRightButtonEditBox
                x: 45
                y: 50
                width: 150
                height: 50
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: middleRightButtonEditTextInput
                    text: qsTr("Text Input")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }

                MouseArea {
                    id: middleRightButtonEditMouse
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: upperLeftButtonBox
        x: -240
        y: -225
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2

        MouseArea {
            id: upperLeftButtonMouse
            anchors.fill: parent

            Text {
                id: upperLeftButtonText
                color: "#ffffff"
                text: qsTr("Flag")
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }

            Rectangle {
                id: upperLeftButtonEditBox
                x: 45
                y: 50
                width: 150
                height: 50
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: upperLeftButtonEditTextInput
                    text: qsTr("Text Input")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }

                MouseArea {
                    id: upperLeftButtonEditMouse
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: upperRightButtonBox
        x: 0
        y: -225
        width: 240
        height: 150
        color: "#1c2d35"
        border.width: 2

        MouseArea {
            id: upperRightButtonMouse
            anchors.fill: parent

            Text {
                id: upperRightButtonText
                color: "#ffffff"
                text: qsTr("Mice")
                style: Text.Raised
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }

            Rectangle {
                id: upperRightButtonEditBox
                x: 45
                y: 50
                width: 150
                height: 50
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                TextInput {
                    id: upperRightButtonEditTextInput
                    text: qsTr("Text Input")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }

                MouseArea {
                    id: upperRightButtonEditMouse
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: statusBox
        x: -240
        y: -275
        width: 480
        height: 50
        color: "#ffffff"
        border.width: 2
        border.color: "#000000"

        Text {
            id: statusBoxText
            color: "#000000"
            anchors.fill: parent
            style: Text.Normal
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Rectangle {
            id: editModeCancelButtonBox
            x: 185
            y: 6
            width: 66
            height: 39
            color: "#b0afaf"
            radius: 20
            Text {
                id: editModeCancelButtonText
                text: qsTr("Cancel")
                anchors.fill: parent
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                id: editModeCancelButtonMouse
                anchors.fill: parent
            }
            border.width: 1
        }

        Rectangle {
            id: editModeSaveButtonBox
            x: 97
            y: 6
            width: 66
            height: 39
            color: "#b0afaf"
            radius: 20
            border.width: 1

            Text {
                id: editModeSaveButtonText
                text: qsTr("Save")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            MouseArea {
                id: editModeSaveButtonMouse
                anchors.fill: parent
            }
        }

        Text {
            id: statusBoxEditModeText
            x: 264
            y: 10
            width: 114
            height: 31
            text: qsTr("Edit Mode")
            font.pixelSize: 26
        }

        Rectangle {
            id: editModeLoginButtonBox
            x: 399
            y: 6
            width: 65
            height: 39
            color: "#b0afaf"
            radius: 20
            border.width: 1

            Text {
                id: editModeLoginButtonText
                text: qsTr("Login")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 18
            }

            MouseArea {
                id: editModeLoginButtonMouse
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: otherScreenBackground
        x: -240
        y: -275
        width: 480
        height: 500
        color: "#748595"
        visible: false

        Rectangle {
            id: otherScreenTextInputBox
            x: 140
            y: 253
            width: 286
            height: 44
            color: "#ffffff"
            border.width: 2
            anchors.horizontalCenter: parent.horizontalCenter

            TextInput {
                id: otherScreenTextInput
                anchors.fill: parent
                cursorVisible: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }

        Text {
            id: otherScreenText
            x: 105
            y: 147
            text: qsTr("What would you like to flag?")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 24
        }

        Rectangle {
            id: otherScreenOkButtonBox
            x: 70
            y: 321
            width: 120
            height: 50
            color: "#a4a4a4"
            radius: 15
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true

            Text {
                id: otherScreenOkButtonText
                text: qsTr("OK")
                anchors.fill: parent
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }

            MouseArea {
                id: otherScreenOkButtonMouse
                anchors.fill: parent
            }
        }

        Rectangle {
            id: otherScreenCancelButtonBox
            x: 180
            y: 383
            width: 120
            height: 50
            color: "#a4a4a4"
            radius: 15
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true

            Text {
                id: otherScreenCancelButtonText
                text: qsTr("Cancel")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 18
            }

            MouseArea {
                id: otherScreenCancelButtonMouse
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: lowerRightButtonNoButtonBox
        x: 0
        y: 151
        width: 240
        height: 74
        color: "#f60000"
        visible: false

        MouseArea {
            id: lowerRightButtonNoButtonMouse
            anchors.fill: parent
        }

        Text {
            id: lowerRightButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 18
        }
    }
    Rectangle {
        id: lowerRightButtonYesButtonBox
        x: 0
        y: 76
        width: 240
        height: 74
        color: "#4dff09"
        visible: false

        MouseArea {
            id: lowerRightButtonYesButtonMouse
            anchors.fill: parent
        }

        Text {
            id: lowerRightButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }
    }

    Rectangle {
        id: lowerLeftButtonNoButtonBox
        x: -240
        y: 150
        width: 240
        height: 75
        color: "#f60000"
        visible: false

        Text {
            id: lowerLeftButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
        }

        MouseArea {
            id: lowerLeftButtonNoButtonMouse
            anchors.fill: parent
        }
    }
    Rectangle {
        id: lowerLeftButtonYesButtonBox
        x: -240
        y: 75
        width: 240
        height: 75
        color: "#4dff09"
        visible: false

        Text {
            id: lowerLeftButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            anchors.top: parent.top
            anchors.left: parent.left
            font.pixelSize: 18
        }

        MouseArea {
            id: lowerLeftButtonYesButtonMouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: middleLeftButtonYesButtonBox
        x: -240
        y: -74
        width: 240
        height: 74
        color: "#4dff09"
        visible: false
        MouseArea {
            id: middleLeftButtonYesButtonMouse
            anchors.fill: parent
        }

        Text {
            id: middleLeftButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: middleLeftButtonNoButtonBox
        x: -240
        y: 1
        width: 240
        height: 74
        color: "#f60000"
        visible: false
        MouseArea {
            id: middleLeftButtonNoButtonMouse
            anchors.fill: parent
        }

        Text {
            id: middleLeftButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: middleRightButtonYesButtonBox
        x: 0
        y: -74
        width: 240
        height: 74
        color: "#4dff09"
        visible: false
        MouseArea {
            id: middleRightButtonYesButtonMouse
            anchors.fill: parent
        }

        Text {
            id: middleRightButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: middleRightButtonNoButtonBox
        x: 0
        y: 1
        width: 240
        height: 74
        color: "#f60000"
        visible: false
        MouseArea {
            id: middleRightButtonNoButtonMouse
            anchors.fill: parent
        }

        Text {
            id: middleRightButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: upperLeftButtonYesButtonBox
        x: -240
        y: -225
        width: 240
        height: 74
        color: "#4dff09"
        visible: false
        MouseArea {
            id: upperLeftButtonYesButtonMouse
            anchors.fill: parent
        }

        Text {
            id: upperLeftButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: upperLeftButtonNoButtonBox
        x: -240
        y: -150
        width: 240
        height: 74
        color: "#f60000"
        visible: false
        MouseArea {
            id: upperLeftButtonNoButtonMouse
            anchors.fill: parent
        }

        Text {
            id: upperLeftButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: upperRightButtonYesButtonBox
        x: 0
        y: -225
        width: 240
        height: 74
        color: "#4dff09"
        visible: false
        MouseArea {
            id: upperRightButtonYesButtonMouse
            anchors.fill: parent
        }

        Text {
            id: upperRightButtonYesButtonText
            text: qsTr("Yes")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: upperRightButtonNoButtonBox
        x: 0
        y: -150
        width: 240
        height: 74
        color: "#f60000"
        visible: false
        MouseArea {
            id: upperRightButtonNoButtonMouse
            anchors.fill: parent
        }

        Text {
            id: upperRightButtonNoButtonText
            text: qsTr("No")
            font.bold: true
            anchors.fill: parent
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: editImageBox
        x: -240
        y: -275
        width: 70
        height: 55
        color: "#00000000"
        rotation: 0

        MouseArea {
            id: editImageMouse
            anchors.fill: parent
        }

        Image {
            id: editImage
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
            source: "/Images/edit_icon.png"
        }
    }

    Rectangle {
        id: loginScreenBackground
        x: -240
        y: -275
        width: 480
        height: 551
        color: "#748595"
        visible: false

        Text {
            id: loginScreenNameText
            x: 113
            y: 61
            text: qsTr("Name")
            font.pixelSize: 30
        }

        Text {
            id: loginScreenPasswordText
            x: 113
            y: 177
            text: qsTr("Password")
            font.pixelSize: 30
        }

        Rectangle {
            id: loginScreenEnterButtonBox
            x: 140
            y: 358
            width: 120
            height: 44
            color: "#a9a9a9"
            radius: 15
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {
                id: loginScreenEnterButtonMouse
                anchors.fill: parent
            }

            Text {
                id: loginScreenEnterButtonText
                text: qsTr("Enter")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                font.pixelSize: 24
            }
        }

        Rectangle {
            id: loginScreenTopTextInputBox
            x: 113
            y: 124
            width: 265
            height: 38
            color: "#ffffff"

            TextInput {
                id: loginScreenTopTextInput
                text: qsTr("")
                anchors.fill: parent
                font.pixelSize: 25
            }
        }

        Rectangle {
            id: loginScreenMiddleTextInputBox
            x: 113
            y: 219
            width: 265
            height: 38
            color: "#ffffff"
            TextInput {
                id: loginScreenMiddleTextInput
                text: qsTr("")
                font.pixelSize: 25
                anchors.fill: parent
            }
        }

        Text {
            id: loginScreenFarmText
            x: 113
            y: 263
            text: qsTr("Farm")
            font.pixelSize: 30
        }

        Rectangle {
            id: loginScreenLowerTextInputBox
            x: 113
            y: 305
            width: 265
            height: 38
            color: "#ffffff"

            TextInput {
                id: loginScreenLowerTextInput
                text: qsTr("")
                anchors.fill: parent
                font.pixelSize: 25
            }
        }

        Rectangle {
            id: loginScreenCancelButtonBox
            x: 180
            y: 416
            width: 120
            height: 44
            color: "#a9a9a9"
            radius: 15
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 1

            Text {
                id: loginScreenCancelButtonText
                text: qsTr("Cancel")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                font.pixelSize: 24
            }

            MouseArea {
                id: loginScreenCancelButtonMouse
                anchors.fill: parent
            }
        }

        Text {
            id: loginScreenVersionNumber
            x: 185
            y: 480
            text: qsTr("Version Number 1.008")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: verifyScreenBackground
        x: -240
        y: -275
        width: 480
        height: 551
        color: "#748595"
        visible: false

        Text {
            id: verifyScreenFlaggerAppText
            x: 144
            y: 74
            color: "#1c2d35"
            text: qsTr("Flagger App")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
        }

        Text {
            id: verifyScreenCodeText
            x: 134
            y: 151
            text: qsTr("Please Enter Verification Code")
            font.pixelSize: 14
        }

        Rectangle {
            id: verifyScreenTextInputBox
            x: 134
            y: 181
            width: 200
            height: 28
            color: "#ffffff"

            TextInput {
                id: verifyScreenTextInput
                text: qsTr("")
                anchors.fill: parent
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: verifyScreenEnterButtonBox
            x: 177
            y: 228
            width: 111
            height: 45
            color: "#a9a9a9"
            radius: 15
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: verifyScreenEnterButtonText
                text: qsTr("Enter")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                font.pixelSize: 24
            }

            MouseArea {
                id: verifyScreenEnterButtonMouse
                anchors.fill: parent
            }
        }
    }

    Text {
        id: eagleText
        x: -11
        y: 246
        text: qsTr("Eagle Digital Imaging, Inc.")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }

    Text {
        id: accuracyLabel
        x: -240
        y: -240
        text: qsTr("Horizontal Accuracy:")
        font.pixelSize: 12
    }

    Text {
        id: accuracyText
        x: -113
        y: -240
        text: qsTr("Text")
        font.pixelSize: 12
    }

    Text {
        id: farmText
        x: 191
        y: -240
        text: qsTr("Text")
        font.pixelSize: 12
    }
}
