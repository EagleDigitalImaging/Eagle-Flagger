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
import QtQuick.Window 2.2
import QtPositioning 5.3
import QtQml 2.0
import QtQuick.Controls 2.0


Window {
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Flagger App")

    MainForm {
        id: mainF

        property string fullFarmText: ""
        property variant lines: []

        property double latitude: 0
        property double longitude: 0
        property string clientDate: Qt.formatDateTime(new Date(),"yyMMdd")
        property string clientTime: Qt.formatTime(new Date(), "hh:mm:ss")
        property double accuracy: 0

        property string nameText: if(auth.getName().toString().length>0)
                                  {
                                      auth.getName();
                                  } else
                                  {
                                      ""
                                  }

        property string passwordText: if(auth.getPassword().toString().length>0)
                                      {
                                          auth.getPassword();
                                      } else
                                      {
                                          ""
                                      }

        //This turns on the geopositioning functionality of the device
        PositionSource {
            id: src
            active: true
        }

        property date gpsTimeStamp: src.position.timestamp


        width: Window.width
        height: Window.height
        anchors.fill: parent


        //Helper function that calls the email send function
        function send(msg, sendMessage){
            var value = mail.sendEmail(msg.toString(),sendMessage);            
        }

        //This function checks to see if the user has entered the initial verification code
        function checkVerif(){
            if(!auth.getVerif().toString().length>0)
            {
                verifyScreenBackground.visible = true;
                verifyScreenEnterButtonMouse.enabled = true;
                eagleLogoImage.visible = true;
                eagleText.visible = true;
                mainF.viewMain(false);
            } else
            {
                checkAuth(false);
                eagleLogoImage.visible = false;
            }
        }

        //This function checks to see if the user has provided a user name and password
        function checkAuth(check){
            if(!auth.getPassword().toString().length>0 || check)
            {
                loginScreenBackground.visible = true;
                comboBox1.visible = true;
                eagleText.visible = true;
                loginScreenEnterButtonMouse.enabled = true;
                loginScreenCancelButtonMouse.enabled = true;
                mainF.viewMain(false);
            } else
            {
                mainF.checkButtons();
                mainF.viewMain(true);
            }
         }

        function parse(dir, file)
        {
            fullFarmText = fileHandle.Read(dir,file)
            lines=fullFarmText.split(",")
            return lines
        }

        //This function checks to see if the user has provided customized button labels, and if so sets them
        function checkButtons(){
            if(!buttonHandle.getButtonOne().toString().length>0)
            {
                buttonHandle.setButtonOne(upperLeftButtonText.text);
            } else upperLeftButtonText.text = buttonHandle.getButtonOne();
            if(!buttonHandle.getButtonTwo().toString().length>0)
            {
                buttonHandle.setButtonTwo(upperRightButtonText.text);
            } else upperRightButtonText.text = buttonHandle.getButtonTwo();
            if(!buttonHandle.getButtonThree().toString().length>0)
            {
                buttonHandle.setButtonThree(middleLeftButtonText.text);
            } else middleLeftButtonText.text = buttonHandle.getButtonThree();
            if(!buttonHandle.getButtonFour().toString().length>0)
            {
                buttonHandle.setButtonFour(middleRightButtonText.text);
            } else middleRightButtonText.text = buttonHandle.getButtonFour();
            if(!buttonHandle.getButtonFive().toString().length>0)
            {
                buttonHandle.setButtonFive(lowerLeftButtonText.text);
            } else lowerLeftButtonText.text = buttonHandle.getButtonFive();
        }

        //This function sets and dismantles the editting mode, in which the user can change the text of the buttons
        function editMode(status){
            if(status)
            {
                mainMiceEnabled(false);
                statusBoxEditModeText.visible=true;
                statusBoxText.text="";
                statusBox.color="#ffffff";
                editColors();
                lowerLeftButtonEditBox.visible=true;
                middleLeftButtonEditBox.visible=true;
                middleRightButtonEditBox.visible=true;
                upperLeftButtonEditBox.visible=true;
                upperRightButtonEditBox.visible=true;
                editModeSaveButtonBox.visible=true;
                editModeCancelButtonBox.visible=true;
                editModeLoginButtonBox.visible=true;
                editModeSaveButtonMouse.enabled=true;
                editModeCancelButtonMouse.enabled=true;
                lowerLeftButtonEditMouse.enabled=true;
                middleRightButtonEditMouse.enabled=true;
                middleLeftButtonEditMouse.enabled=true;
                upperLeftButtonEditMouse.enabled=true;
                upperRightButtonEditMouse.enabled=true;
                editModeLoginButtonMouse.enabled=true;
                lowerLeftButtonEditMouse.visible=true;
                middleRightButtonEditMouse.visible=true;
                middleLeftButtonEditMouse.visible=true;
                upperLeftButtonEditMouse.visible=true;
                upperRightButtonEditMouse.visible=true;
                editModeLoginButtonMouse.visible=true;
                lowerLeftButtonEditTextInput.text=lowerLeftButtonText.text.replace("\n","")
                middleLeftButtonEditTextInput.text=middleLeftButtonText.text.replace("\n","");
                middleRightButtonEditTextInput.text=middleRightButtonText.text.replace("\n","");
                upperLeftButtonEditTextInput.text=upperLeftButtonText.text.replace("\n","");
                upperRightButtonEditTextInput.text=upperRightButtonText.text.replace("\n","");
                lowerLeftButtonText.visible=false;
                middleLeftButtonText.visible=false;
                middleRightButtonText.visible=false;
                upperLeftButtonText.visible=false;
                upperRightButtonText.visible=false;
                accuracyLabel.visible=false;
                accuracyText.visible=false;
                farmText.visible=false;
            }
            if(!status)
            {
                mainMiceEnabled(true);
                statusBoxEditModeText.visible=false;
                standardColors();
                lowerLeftButtonEditBox.visible=false;
                middleLeftButtonEditBox.visible=false;
                middleRightButtonEditBox.visible=false;
                upperLeftButtonEditBox.visible=false;
                upperRightButtonEditBox.visible=false;
                editModeSaveButtonBox.visible=false;
                editModeCancelButtonBox.visible=false;
                editModeLoginButtonBox.visible=false;
                editModeSaveButtonMouse.enabled=false;
                editModeCancelButtonMouse.enabled=false;
                lowerLeftButtonEditMouse.enabled=false;
                middleRightButtonEditMouse.enabled=false;
                middleLeftButtonEditMouse.enabled=false;
                upperLeftButtonEditMouse.enabled=false;
                upperRightButtonEditMouse.enabled=false;
                editModeLoginButtonMouse.enabled=false;
                lowerLeftButtonText.visible=true;
                middleLeftButtonText.visible=true;
                middleRightButtonText.visible=true;
                upperLeftButtonText.visible=true;
                upperRightButtonText.visible=true;
                accuracyLabel.visible=true;
                accuracyText.visible=true;
                farmText.visible=true;
            }
        }

        //When called, this function resets to the colors of the buttons to the standard color
        function standardColors(){
            lowerLeftButtonBox.color="#1c2d35";
            lowerRightButtonBox.color="#1c2d35";
            middleLeftButtonBox.color="#1c2d35";
            middleRightButtonBox.color="#1c2d35";
            upperLeftButtonBox.color="#1c2d35";
            upperRightButtonBox.color="#1c2d35";
        }

        //When called, this function sets to the colors of the buttons to the editting color
        function editColors() {
            lowerLeftButtonBox.color="#226f22";
            lowerRightButtonBox.color="#226f22";
            middleLeftButtonBox.color="#226f22";
            middleRightButtonBox.color="#226f22";
            upperLeftButtonBox.color="#226f22";
            upperRightButtonBox.color="#226f22";
        }

        //This function saves the edits made by the user to the text of the buttons
        function saveEdits(){
            editMode(false);
            if(lowerLeftButtonEditTextInput.text.trim().length>0)
            {
                lowerLeftButtonText.text=lowerLeftButtonEditTextInput.text.trim();

                if (lowerLeftButtonText.text.length>9)
                {
                    lowerLeftButtonText.text=lowerLeftButtonText.text.substring(0,8)+"\n"+lowerLeftButtonText.text.substring(8,lowerLeftButtonText.text.length)
                }

                buttonHandle.setButtonFive(lowerLeftButtonText.text);
            }
            if(middleLeftButtonEditTextInput.text.trim().length>0)
            {
                middleLeftButtonText.text=middleLeftButtonEditTextInput.text.trim();

                if (middleLeftButtonText.text.length>9)
                {
                    middleLeftButtonText.text=middleLeftButtonText.text.substring(0,8)+"\n"+middleLeftButtonText.text.substring(8,middleLeftButtonText.text.length)
                }

                buttonHandle.setButtonThree(middleLeftButtonText.text);
            }
            if(middleRightButtonEditTextInput.text.trim().length>0)
            {
                middleRightButtonText.text=middleRightButtonEditTextInput.text.trim();

                if (middleRightButtonText.text.length>9)
                {
                    middleRightButtonText.text=middleRightButtonText.text.substring(0,8)+"\n"+middleRightButtonText.text.substring(8,middleRightButtonText.text.length)
                }

                buttonHandle.setButtonFour(middleRightButtonText.text)
            }
            if(upperLeftButtonEditTextInput.text.trim().length>0)
            {
                upperLeftButtonText.text=upperLeftButtonEditTextInput.text.trim();


                if (upperLeftButtonText.text.length>9)
                {
                    upperLeftButtonText.text=upperLeftButtonText.text.substring(0,8)+"\n"+upperLeftButtonText.text.substring(8,upperLeftButtonText.text.length)
                }

                buttonHandle.setButtonOne(upperLeftButtonText.text);
            }
            if(upperRightButtonEditTextInput.text.trim().length>0)
            {
                upperRightButtonText.text=upperRightButtonEditTextInput.text.trim();

                if (upperRightButtonText.text.length>9)
                {
                    upperRightButtonText.text=upperRightButtonText.text.substring(0,8)+"\n"+upperRightButtonText.text.substring(8,upperRightButtonText.text.length)
                }

                buttonHandle.setButtonTwo(upperRightButtonText.text);
            }
        }

        //This function enables and disables the six main buttons, as well as the edit button
        function mainMiceEnabled(status)
        {
            if(status)
            {
                lowerLeftButtonMouse.enabled = true;
                lowerRightButtonMouse.enabled = true;
                middleLeftButtonMouse.enabled = true;
                middleRightButtonMouse.enabled = true;
                upperLeftButtonMouse.enabled = true;
                upperRightButtonMouse.enabled = true;
                editImageMouse.enabled = true;
            }
            else
            {
                lowerLeftButtonMouse.enabled = false;
                lowerRightButtonMouse.enabled = false;
                middleLeftButtonMouse.enabled = false;
                middleRightButtonMouse.enabled = false;
                upperLeftButtonMouse.enabled = false;
                upperRightButtonMouse.enabled = false;
                editImageMouse.enabled = false;
            }
        }

        //This function sets and the unsets the main screen
        function viewMain(status){
            if(status)
            {
                lowerLeftButtonBox.visible=true;
                lowerRightButtonBox.visible=true;
                middleLeftButtonBox.visible=true;
                middleRightButtonBox.visible=true;
                upperLeftButtonBox.visible=true;
                upperRightButtonBox.visible=true;
                statusBox.visible=true;
                editImage.visible=true;
                mainF.mainMiceEnabled(true);
                accuracyLabel.visible=true;
                accuracyText.visible=true;
                farmText.visible=true;
            } else
            {
                lowerLeftButtonBox.visible=false;
                lowerRightButtonBox.visible=false;
                middleLeftButtonBox.visible=false;
                middleRightButtonBox.visible=false;
                upperLeftButtonBox.visible=false;
                upperRightButtonBox.visible=false;
                statusBox.visible=false;
                editImage.visible=false;
                mainF.mainMiceEnabled(false);
                accuracyLabel.visible=false;
                accuracyText.visible=false;
                farmText.visible=false;
            }
        }

        //This function resets the status box text to "" and the color to white
        function resetStatusBox()
        {
            statusBoxText.text="";
            statusBox.color="#ffffff";
            if(!statusBoxEditModeText.visible && !loginScreenBackground.visible && !otherScreenBackground.visible)
            {
                accuracyLabel.visible=true;
                accuracyText.visible=true;
                farmText.visible=true;
            }
        }

        //This function is called once at the start of the app to check if the user has provided a name and password
        Timer {
            id: startUp
            triggeredOnStart: true
            running: true
            repeat: false
            onTriggered: mainF.checkVerif();
        }

        //This function calls for an empty email to be sent every 30 seconds. If there is anything in the cache that has not been sent,
        //and there is now internet connection, the entire cache will be sent in a single email. Else nothing will happen.
        Timer {
            interval: 30000
            running: true
            repeat: true
            onTriggered: mainF.send("", true);
        }

        //This function limits the amount of time that a flag is displayed at the top of the screen
        Timer {
            id: mainText
            interval: 2000
            onTriggered: mainF.resetStatusBox();//mainF.statusBoxText.text="";
        }


        ComboBox {
            id: comboBox1
            visible: false
            model: mainF.parse(":/Farm","Farms.txt")
            x: mainF.loginScreenFarmText.x
            y: mainF.loginScreenFarmText.y+mainF.loginScreenTopTextInputBox.height*2/3
            width: mainF.loginScreenTopTextInputBox.width
            height: mainF.loginScreenTopTextInputBox.height
            font.pixelSize: mainF. loginScreenTopTextInput.font.pixelSize
        }

        //Setting widths of the buttons and other objects

        lowerLeftButtonBox.width: if(Window.height>Window.width)
                                  {
                                      Window.width/3
                                  } else Window.width/4

        lowerRightButtonBox.width: lowerLeftButtonBox.width
        middleLeftButtonBox.width: lowerLeftButtonBox.width
        middleRightButtonBox.width: lowerLeftButtonBox.width
        upperLeftButtonBox.width: lowerLeftButtonBox.width
        upperRightButtonBox.width: lowerLeftButtonBox.width
        statusBox.width: Window.width
        otherScreenBackground.width: Window.width
        otherScreenTextInputBox.width: if(Window.height>Window.width)
                           {
                               Window.width/2
                           } else Window.width/3
        otherScreenOkButtonBox.width: if(Window.height>Window.width)
                           {
                               Window.height/8
                           } else Window.width/8
        otherScreenCancelButtonBox.width: otherScreenOkButtonBox.width

        lowerLeftButtonYesButtonBox.width: lowerLeftButtonBox.width
        lowerLeftButtonNoButtonBox.width: lowerLeftButtonBox.width
        lowerRightButtonYesButtonBox.width: lowerLeftButtonBox.width
        lowerRightButtonNoButtonBox.width: lowerLeftButtonBox.width
        middleLeftButtonYesButtonBox.width: lowerLeftButtonBox.width
        middleLeftButtonNoButtonBox.width: lowerLeftButtonBox.width
        middleRightButtonYesButtonBox.width: lowerLeftButtonBox.width
        middleRightButtonNoButtonBox.width: lowerLeftButtonBox.width
        upperLeftButtonYesButtonBox.width: lowerLeftButtonBox.width
        upperLeftButtonNoButtonBox.width: lowerLeftButtonBox.width
        upperRightButtonYesButtonBox.width: lowerLeftButtonBox.width
        upperRightButtonNoButtonBox.width: lowerLeftButtonBox.width
        loginScreenBackground.width: Window.width
        verifyScreenBackground.width: Window.width
        loginScreenTopTextInputBox.width: otherScreenTextInputBox.width
        loginScreenMiddleTextInputBox.width: loginScreenTopTextInputBox.width
        loginScreenEnterButtonBox.width: otherScreenOkButtonBox.width*2
        verifyScreenTextInputBox.width: otherScreenTextInputBox.width
        verifyScreenEnterButtonBox.width: loginScreenEnterButtonBox.width
        loginScreenCancelButtonBox.width: loginScreenEnterButtonBox.width
        accuracyLabel.width: accuracyLabel.contentWidth


        lowerLeftButtonEditBox.width: lowerLeftButtonBox.width*2/3

        middleLeftButtonEditBox.width: lowerLeftButtonEditBox.width
        middleRightButtonEditBox.width: lowerLeftButtonEditBox.width
        upperLeftButtonEditBox.width: lowerLeftButtonEditBox.width
        upperRightButtonEditBox.width: lowerLeftButtonEditBox.width

        //Setting heights of the buttons and other objects

        lowerLeftButtonBox.height: if(Window.height>Window.width)
                                   {
                                       Window.height/4
                                   } else Window.height/3

        lowerRightButtonBox.height: lowerLeftButtonBox.height
        middleLeftButtonBox.height: lowerLeftButtonBox.height
        middleRightButtonBox.height: lowerLeftButtonBox.height
        upperLeftButtonBox.height: lowerLeftButtonBox.height
        upperRightButtonBox.height: lowerLeftButtonBox.height


        statusBox.height: if(Window.height>Window.width)
                          {
                              Window.height/10
                          } else Window.height/6

        otherScreenBackground.height: Window.height
        otherScreenTextInputBox.height: if(Window.height>Window.width)
                            {
                                Window.height/20
                            } else Window.width/20

        otherScreenOkButtonBox.height: otherScreenOkButtonBox.width*0.5//*2/3
        otherScreenCancelButtonBox.height: otherScreenOkButtonBox.height

        lowerLeftButtonYesButtonBox.height: lowerLeftButtonBox.height/2
        lowerLeftButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        lowerRightButtonYesButtonBox.height: lowerLeftButtonYesButtonBox.height
        lowerRightButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        middleLeftButtonYesButtonBox.height: lowerLeftButtonYesButtonBox.height
        middleLeftButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        middleRightButtonYesButtonBox.height: lowerLeftButtonYesButtonBox.height
        middleRightButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        upperLeftButtonYesButtonBox.height: lowerLeftButtonYesButtonBox.height
        upperLeftButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        upperRightButtonYesButtonBox.height: lowerLeftButtonYesButtonBox.height
        upperRightButtonNoButtonBox.height: lowerLeftButtonYesButtonBox.height
        loginScreenBackground.height: Window.height
        verifyScreenBackground.height: Window.height
        loginScreenTopTextInputBox.height: otherScreenTextInputBox.height
        loginScreenMiddleTextInputBox.height: loginScreenTopTextInputBox.height
        loginScreenEnterButtonBox.height: otherScreenOkButtonBox.height

        lowerLeftButtonEditBox.height: if(Window.width>Window.height)
                            {
                                lowerLeftButtonBox.height*1/4
                            } else lowerLeftButtonBox.height*1/6
        middleLeftButtonEditBox.height: lowerLeftButtonEditBox.height
        middleRightButtonEditBox.height: lowerLeftButtonEditBox.height
        upperLeftButtonEditBox.height: lowerLeftButtonEditBox.height
        upperRightButtonEditBox.height: lowerLeftButtonEditBox.height
        verifyScreenTextInputBox.height: otherScreenTextInputBox.height
        verifyScreenEnterButtonBox.height: loginScreenEnterButtonBox.height
        loginScreenCancelButtonBox.height: loginScreenEnterButtonBox.height
        accuracyLabel.height: accuracyLabel.contentHeight

        editImageBox.height: statusBox.height*2/3
        editImageBox.width: editImageBox.height

        editModeSaveButtonBox.height: statusBox.height*2/3
        editModeSaveButtonBox.width: editModeSaveButtonBox.height*1.5

        editModeCancelButtonBox.width: editModeSaveButtonBox.width
        editModeCancelButtonBox.height: editModeSaveButtonBox.height

        editModeLoginButtonBox.height: editModeSaveButtonBox.height
        editModeLoginButtonBox.width: if(Window.height>Window.width)
                            {
                                editModeLoginButtonBox.height
                            } else editModeSaveButtonBox.width


        //Setting the position of the buttons and other objects
        editModeSaveButtonBox.x: editImageBox.x+editImageBox.width*1.25
        editModeSaveButtonBox.y: statusBox.height/2-editModeSaveButtonBox.height/2

        editModeLoginButtonBox.y: editModeCancelButtonBox.y
        editModeLoginButtonBox.x: Window.width-editModeLoginButtonBox.width*1.25

        editModeCancelButtonBox.x: editModeSaveButtonBox.x+editModeCancelButtonBox.width*1.15
        editModeCancelButtonBox.y: editModeSaveButtonBox.y

        lowerLeftButtonBox.x: if(Window.height>Window.width)
                              {
                                  lowerLeftButtonBox.width/3
                              } else lowerLeftButtonBox.width*11/4
        lowerLeftButtonBox.y: if(Window.height>Window.width)
                              {
                                  Window.height-lowerLeftButtonBox.height*1.25
                              } else Window.height-lowerLeftButtonBox.height*14/6


        lowerRightButtonBox.x: if(Window.height>Window.width)
                               {
                                   Window.width-lowerRightButtonBox.width*4/3
                               } else lowerLeftButtonBox.x
        lowerRightButtonBox.y: if(Window.height>Window.width)
                               {
                                   lowerLeftButtonBox.y
                               } else Window.height-lowerRightButtonBox.height*7/6


        middleLeftButtonBox.x: if(Window.height>Window.width)
                               {
                                   lowerLeftButtonBox.x
                               } else middleLeftButtonBox.width*3/2
        middleLeftButtonBox.y: if(Window.height>Window.width)
                               {
                                   lowerLeftButtonBox.y-middleLeftButtonBox.height-Window.height*1/32
                               } else lowerLeftButtonBox.y


        middleRightButtonBox.x: if(Window.height>Window.width)
                                {
                                    lowerRightButtonBox.x
                                } else middleLeftButtonBox.x
        middleRightButtonBox.y: if(Window.height>Window.width)
                                {
                                    middleLeftButtonBox.y
                                } else lowerRightButtonBox.y

        upperLeftButtonBox.x: if(Window.height>Window.width)
                              {
                                  lowerLeftButtonBox.x
                              } else upperLeftButtonBox.width/4
        upperLeftButtonBox.y: if(Window.height>Window.width)
                              {
                                  middleLeftButtonBox.y-upperLeftButtonBox.height-Window.height*1/32
                              } else lowerLeftButtonBox.y

        upperRightButtonBox.x: if(Window.height>Window.width)
                              {
                                  lowerRightButtonBox.x
                              } else upperLeftButtonBox.x
        upperRightButtonBox.y: if(Window.height>Window.width)
                              {
                                  upperLeftButtonBox.y
                              } else lowerRightButtonBox.y

        editImageBox.x: editImageBox.width/4
        editImageBox.y: statusBox.height/2-editImageBox.height/2

        accuracyLabel.x: editImageBox.x+editImageBox.width*1.2
        accuracyLabel.y: statusBox.height*2/3-accuracyLabel.height/2

        accuracyText.x: accuracyLabel.x+accuracyLabel.contentWidth
        accuracyText.y: accuracyLabel.y

        farmText.x: statusBox.width-(farmText.contentWidth+10)
        farmText.y: accuracyText.y

        lowerLeftButtonYesButtonBox.x: lowerLeftButtonBox.x
        lowerLeftButtonYesButtonBox.y: lowerLeftButtonBox.y

        lowerLeftButtonNoButtonBox.x: lowerLeftButtonBox.x
        lowerLeftButtonNoButtonBox.y: lowerLeftButtonYesButtonBox.y+lowerLeftButtonNoButtonBox.height

        lowerRightButtonYesButtonBox.x: lowerRightButtonBox.x
        lowerRightButtonYesButtonBox.y: lowerRightButtonBox.y

        lowerRightButtonNoButtonBox.x: lowerRightButtonBox.x
        lowerRightButtonNoButtonBox.y: lowerRightButtonYesButtonBox.y+lowerRightButtonNoButtonBox.height

        middleLeftButtonYesButtonBox.x: middleLeftButtonBox.x
        middleLeftButtonYesButtonBox.y: middleLeftButtonBox.y

        middleLeftButtonNoButtonBox.x: middleLeftButtonBox.x
        middleLeftButtonNoButtonBox.y: middleLeftButtonYesButtonBox.y+middleLeftButtonNoButtonBox.height


        middleRightButtonYesButtonBox.x: middleRightButtonBox.x
        middleRightButtonYesButtonBox.y: middleRightButtonBox.y

        middleRightButtonNoButtonBox.x: middleRightButtonBox.x
        middleRightButtonNoButtonBox.y: middleRightButtonYesButtonBox.y+middleRightButtonNoButtonBox.height

        upperLeftButtonYesButtonBox.x: upperLeftButtonBox.x
        upperLeftButtonYesButtonBox.y: upperLeftButtonBox.y

        upperLeftButtonNoButtonBox.x: upperLeftButtonBox.x
        upperLeftButtonNoButtonBox.y: upperLeftButtonYesButtonBox.y+upperLeftButtonNoButtonBox.height

        upperRightButtonYesButtonBox.x: upperRightButtonBox.x
        upperRightButtonYesButtonBox.y: upperRightButtonBox.y

        upperRightButtonNoButtonBox.x: upperRightButtonBox.x
        upperRightButtonNoButtonBox.y: upperRightButtonYesButtonBox.y+upperRightButtonNoButtonBox.height

        loginScreenNameText.x: Window.width/4
        loginScreenNameText.y: Window.height/10

        loginScreenTopTextInputBox.x: loginScreenNameText.x
        loginScreenTopTextInputBox.y: loginScreenNameText.y+loginScreenTopTextInputBox.height*2/3

        loginScreenPasswordText.x: loginScreenNameText.x
        loginScreenPasswordText.y: loginScreenTopTextInputBox.y+loginScreenTopTextInputBox.height*2/3+loginScreenPasswordText.height


        loginScreenMiddleTextInputBox.x: loginScreenTopTextInputBox.x
        loginScreenMiddleTextInputBox.y: loginScreenPasswordText.y+loginScreenMiddleTextInputBox.height*2/3

        loginScreenFarmText.x: loginScreenPasswordText.x
        loginScreenFarmText.y: loginScreenMiddleTextInputBox.y+loginScreenMiddleTextInputBox.height*2/3+loginScreenFarmText.height

        loginScreenEnterButtonBox.y: comboBox1.y+comboBox1.height+loginScreenEnterButtonBox.height/2

        loginScreenVersionNumber.y: loginScreenCancelButtonBox.y+loginScreenCancelButtonBox.height*1.5

        eagleText.y:Window.height-eagleText.height*2

        otherScreenTextInputBox.y: Window.height/4

        verifyScreenTextInputBox.y: otherScreenTextInputBox.y
        verifyScreenTextInputBox.x: otherScreenTextInputBox.x

        verifyScreenEnterButtonBox.y: verifyScreenTextInputBox.y+verifyScreenTextInputBox.height+verifyScreenTextInputBox.height/2

        verifyScreenCodeText.x: verifyScreenTextInputBox.x
        verifyScreenCodeText.y: verifyScreenTextInputBox.y-verifyScreenTextInputBox.height

        statusBox.x: 0
        statusBox.y: 0

        otherScreenBackground.x: 0
        otherScreenBackground.y: 0

        loginScreenBackground.x: 0
        loginScreenBackground.y: 0

        verifyScreenBackground.x: 0
        verifyScreenBackground.y: 0


        otherScreenOkButtonBox.y: otherScreenTextInputBox.y+otherScreenTextInputBox.height*1.2

        otherScreenCancelButtonBox.y: otherScreenOkButtonBox.y+otherScreenCancelButtonBox.height*1.2


        //Dynamic font size linking
        statusBoxEditModeText.font.pixelSize: editModeCancelButtonBox.height/2
        editModeCancelButtonText.font.pixelSize: editModeCancelButtonBox.height/3
        editModeSaveButtonText.font.pixelSize: editModeSaveButtonBox.height/3
        editModeLoginButtonText.font.pixelSize: editModeLoginButtonBox.height/3
        accuracyLabel.font.pixelSize: statusBoxText.font.pixelSize
        accuracyText.font.pixelSize: accuracyLabel.font.pixelSize
        farmText.font.pixelSize: accuracyLabel.font.pixelSize


        lowerLeftButtonText.font.pixelSize: lowerLeftButtonEditBox.height/1.5
        lowerRightButtonText.font.pixelSize: lowerLeftButtonText.font.pixelSize
        middleLeftButtonText.font.pixelSize: lowerLeftButtonText.font.pixelSize
        middleRightButtonText.font.pixelSize: lowerLeftButtonText.font.pixelSize
        upperLeftButtonText.font.pixelSize: lowerLeftButtonText.font.pixelSize
        upperRightButtonText.font.pixelSize: lowerLeftButtonText.font.pixelSize


        otherScreenOkButtonText.font.pixelSize: otherScreenOkButtonBox.height/4
        otherScreenCancelButtonText.font.pixelSize: otherScreenOkButtonText.font.pixelSize
        lowerLeftButtonYesButtonText.font.pixelSize: lowerRightButtonText.font.pixelSize*3/4
        lowerLeftButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        lowerRightButtonYesButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        lowerRightButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        middleLeftButtonYesButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        middleLeftButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        middleRightButtonYesButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        middleRightButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        upperLeftButtonYesButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        upperLeftButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        upperRightButtonYesButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        upperRightButtonNoButtonText.font.pixelSize: lowerLeftButtonYesButtonText.font.pixelSize
        loginScreenEnterButtonText.font.pixelSize: loginScreenEnterButtonBox.height/3
        loginScreenCancelButtonText.font.pixelSize: loginScreenEnterButtonText.font.pixelSize

        eagleText.font.pixelSize: Window.height/50
        loginScreenVersionNumber.font.pixelSize: eagleText.font.pixelSize

        statusBoxText.font.pixelSize: statusBox.height/5
        lowerLeftButtonEditTextInput.font.pixelSize: lowerLeftButtonEditBox.height/3
        middleLeftButtonEditTextInput.font.pixelSize: lowerLeftButtonEditTextInput.font.pixelSize
        middleRightButtonEditTextInput.font.pixelSize: lowerLeftButtonEditTextInput.font.pixelSize
        upperLeftButtonEditTextInput.font.pixelSize: lowerLeftButtonEditTextInput.font.pixelSize
        upperRightButtonEditTextInput.font.pixelSize: lowerLeftButtonEditTextInput.font.pixelSize
        otherScreenTextInput.font.pixelSize: otherScreenTextInputBox.height/2
        otherScreenText.font.pixelSize: if(otherScreenTextInputBox.width<otherScreenTextInputBox.height*3) {
                                            otherScreenTextInputBox.width/6
                                        } else otherScreenTextInputBox.height/2
        verifyScreenFlaggerAppText.font.pixelSize: otherScreenText.font.pixelSize*2
        loginScreenTopTextInput.font.pixelSize: loginScreenTopTextInputBox.height/2
        loginScreenMiddleTextInput.font.pixelSize: loginScreenTopTextInput.font.pixelSize
        verifyScreenTextInput.font.pixelSize: otherScreenTextInput.font.pixelSize


        statusBoxEditModeText.x: editModeCancelButtonBox.x+editModeCancelButtonBox.width*1.15
        statusBoxEditModeText.y: editModeCancelButtonBox.y+editModeCancelButtonBox.height/4

        otherScreenText.y: otherScreenTextInputBox.y-otherScreenTextInputBox.height
        verifyScreenFlaggerAppText.y: Window.height/20

        loginScreenNameText.font.pixelSize: loginScreenTopTextInputBox.height/2
        loginScreenPasswordText.font.pixelSize: loginScreenNameText.font.pixelSize
        loginScreenFarmText.font.pixelSize: loginScreenNameText.font.pixelSize
        sentNotifyText.font.pixelSize: statusBoxEditModeText.font.pixelSize
        verifyScreenCodeText.font.pixelSize: loginScreenNameText.font.pixelSize
        verifyScreenEnterButtonText.font.pixelSize: loginScreenEnterButtonText.font.pixelSize


        sentNotifyText.x: Window.width-sentNotifyText.width*1.25
        sentNotifyText.y: editModeLoginButtonBox.y

        //This regulates the user input to alphanumeric values only
        otherScreenTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        loginScreenTopTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        loginScreenMiddleTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        lowerLeftButtonEditTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        middleLeftButtonEditTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        middleRightButtonEditTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        upperLeftButtonEditTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        upperRightButtonEditTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}
        verifyScreenTextInput.validator: RegExpValidator {regExp: /[A-Za-z0-9 ]+/}

        //This regulates the length of the user input
        lowerLeftButtonEditTextInput.maximumLength: 16
        middleLeftButtonEditTextInput.maximumLength: lowerLeftButtonEditTextInput.maximumLength
        middleRightButtonEditTextInput.maximumLength: lowerLeftButtonEditTextInput.maximumLength
        upperLeftButtonEditTextInput.maximumLength: lowerLeftButtonEditTextInput.maximumLength
        upperRightButtonEditTextInput.maximumLength: lowerLeftButtonEditTextInput.maximumLength
        loginScreenTopTextInput.maximumLength: 18
        loginScreenMiddleTextInput.maximumLength: loginScreenTopTextInput.maximumLength
        verifyScreenTextInput.maximumLength: 15
        otherScreenTextInput.maximumLength: 20

        //Sets initital values
        statusBoxEditModeText.visible: false
        sentNotifyText.visible: false
        eagleText.visible: false
        loginScreenBackground.visible: false
        loginScreenEnterButtonMouse.enabled: false
        editModeSaveButtonBox.visible: false
        editModeCancelButtonBox.visible: false
        editModeSaveButtonMouse.enabled: false
        editModeCancelButtonMouse.enabled: false
        lowerLeftButtonEditMouse.enabled: false
        middleRightButtonEditMouse.enabled: false
        middleLeftButtonEditMouse.enabled: false
        upperLeftButtonEditMouse.enabled: false
        upperRightButtonEditMouse.enabled: false
        editModeLoginButtonMouse.enabled: false
        verifyScreenEnterButtonMouse.enabled: false
        loginScreenCancelButtonMouse.enabled: false

        lowerLeftButtonBox.visible: false
        lowerRightButtonBox.visible: false
        middleLeftButtonBox.visible: false
        middleRightButtonBox.visible: false
        upperLeftButtonBox.visible: false
        upperRightButtonBox.visible: false
        statusBox.visible: false

        lowerLeftButtonEditBox.visible: false
        middleLeftButtonEditBox.visible: false
        middleRightButtonEditBox.visible: false
        upperLeftButtonEditBox.visible: false
        upperRightButtonEditBox.visible: false
        editModeLoginButtonBox.visible: false
        verifyScreenBackground.visible: false

        lowerLeftButtonMouse.enabled: false
        lowerRightButtonMouse.enabled: false
        middleLeftButtonMouse.enabled: false
        middleRightButtonMouse.enabled: false
        upperLeftButtonMouse.enabled: false
        upperRightButtonMouse.enabled: false

        loginScreenLowerTextInputBox.visible: false

        //Image
        //{
        //    id:eagleLogoImage
        //    source: "/Images/Example.png"
        //    sourceSize.width: if(Window.width>Window.height)
        //                      {
        //                          Window.height/5
        //                      } else Window.width/5
        //    sourceSize.height: eagleLogoImage.width
        //    x: Window.width/2-sourceSize.width/2
        //    y: mainF.verifyScreenEnterButtonBox.y+mainF.verifyScreenEnterButtonBox.height*1.5
        //    visible: false
        //}

        accuracyLabel.text: "Accuracy: "
        accuracyText.text: Math.round(src.position.horizontalAccuracy*3.28084)+" ft"
        accuracyText.color: if((src.position.horizontalAccuracy*3.28084)>30){
                                "red"
                            } else "black"

        farmText.text: auth.getFarm()
        loginScreenVersionNumber.text: fileHandle.Read(":/Verif","Version.txt")

        //Setting actions for each of the buttons

        //Verification - Enter button
        verifyScreenEnterButtonMouse.onClicked: {
            verifyScreenTextInput.text = verifyScreenTextInput.text.trim();
            if(verifyScreenTextInput.text.localeCompare(fileHandle.Read(":/Verif","Verify.txt").toString().replace("\n",""))===0)
            {
                verifyScreenBackground.visible = false;
                verifyScreenEnterButtonMouse.enabled = false;
                eagleText.visible = false;
                auth.setVerif(verifyScreenTextInput.text);
                viewMain(true);
                checkAuth(false);
                eagleLogoImage.visible = false;
            }
        }

        //Login - Enter button
        loginScreenEnterButtonMouse.onClicked: {
            loginScreenTopTextInput.text = loginScreenTopTextInput.text.trim();
            loginScreenMiddleTextInput.text = loginScreenMiddleTextInput.text.trim();
            if(loginScreenTopTextInput.text.length>0 && loginScreenMiddleTextInput.text.length>0 && comboBox1.displayText.length>0)
            {
                loginScreenBackground.visible = false;
                comboBox1.visible = false;
                eagleText.visible = false;
                auth.setName(loginScreenTopTextInput.text);
                auth.setPassword(loginScreenMiddleTextInput.text);
                auth.setFarm(comboBox1.displayText)
                nameText = loginScreenTopTextInput.text;
                passwordText = loginScreenMiddleTextInput.text;
                farmText.text = comboBox1.displayText;
                viewMain(true);
                loginScreenEnterButtonMouse.enabled = false;
                loginScreenCancelButtonMouse.enabled = false;
            }
        }

        //Login - Cancel button
        loginScreenCancelButtonMouse.onClicked: {
            if(auth.getName().toString().length>0 && auth.getPassword().toString().length>0 && auth.getFarm().toString().length>0)
            {
                loginScreenBackground.visible = false;
                comboBox1.visible = false;
                eagleText.visible = false;
                viewMain(true);
                loginScreenEnterButtonMouse.enabled = false;
                loginScreenCancelButtonMouse.enabled = false;
            }
        }

        //Edit (Hamburger) button
        editImageMouse.onClicked: {
            editMode(true);
        }

        //Edit Mode - Save button
        editModeSaveButtonMouse.onClicked: {
            saveEdits();
        }

        //Edit Mode - Cancel button
        editModeCancelButtonMouse.onClicked: {
            editMode(false);
        }

        //Edit Mode - Login button
        editModeLoginButtonMouse.onClicked: {
            saveEdits();
            mainMiceEnabled(false);
            loginScreenTopTextInput.text = auth.getName().toString();
            loginScreenMiddleTextInput.text = auth.getPassword().toString();
            comboBox1.currentIndex = comboBox1.find(auth.getFarm().toString());
            checkAuth(true);
        }

        //Edit Mode - Lower left button text input
        lowerLeftButtonEditMouse.onClicked: {
            lowerLeftButtonEditTextInput.selectAll();
            lowerLeftButtonEditTextInput.forceActiveFocus();
            lowerLeftButtonEditMouse.visible=false;
            middleRightButtonEditMouse.visible=true;
            middleLeftButtonEditMouse.visible=true;
            upperLeftButtonEditMouse.visible=true;
            upperRightButtonEditMouse.visible=true;
        }

        //Edit Mode - Middle right button text input
        middleRightButtonEditMouse.onClicked: {
            middleRightButtonEditTextInput.selectAll();
            middleRightButtonEditTextInput.forceActiveFocus();
            lowerLeftButtonEditMouse.visible=true;
            middleRightButtonEditMouse.visible=false;
            middleLeftButtonEditMouse.visible=true;
            upperLeftButtonEditMouse.visible=true;
            upperRightButtonEditMouse.visible=true;
        }

        //Edit Mode - Middle left button text input
        middleLeftButtonEditMouse.onClicked: {
            middleLeftButtonEditTextInput.selectAll();
            middleLeftButtonEditTextInput.forceActiveFocus();
            lowerLeftButtonEditMouse.visible=true;
            middleRightButtonEditMouse.visible=true;
            middleLeftButtonEditMouse.visible=false;
            upperLeftButtonEditMouse.visible=true;
            upperRightButtonEditMouse.visible=true;
        }

        //Edit Mode - Upper left button text input
        upperLeftButtonEditMouse.onClicked: {
            upperLeftButtonEditTextInput.selectAll();
            upperLeftButtonEditTextInput.forceActiveFocus();
            lowerLeftButtonEditMouse.visible=true;
            middleRightButtonEditMouse.visible=true;
            middleLeftButtonEditMouse.visible=true;
            upperLeftButtonEditMouse.visible=false;
            upperRightButtonEditMouse.visible=true;
        }

        //Edit Mode - Upper right button text input
        upperRightButtonEditMouse.onClicked: {
            upperRightButtonEditTextInput.selectAll();
            upperRightButtonEditTextInput.forceActiveFocus();
            lowerLeftButtonEditMouse.visible=true;
            middleRightButtonEditMouse.visible=true;
            middleLeftButtonEditMouse.visible=true;
            upperLeftButtonEditMouse.visible=true;
            upperRightButtonEditMouse.visible=false;
        }

        //Lower left main button
        lowerLeftButtonMouse.onClicked: {
            lowerLeftButtonYesButtonBox.visible = true;
            lowerLeftButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);

            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Lower left main button "Yes"
        lowerLeftButtonYesButtonMouse.onClicked: {
            statusBoxText.text = "Sending... "+lowerLeftButtonText.text.replace("\n","");
            send(lowerLeftButtonText.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
            statusBox.color="#21ff09";
            accuracyLabel.visible=false;
            accuracyText.visible=false;
            farmText.visible=false;
            mainText.restart();
            lowerLeftButtonYesButtonBox.visible = false;
            lowerLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Lower left main button "No"
        lowerLeftButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            lowerLeftButtonYesButtonBox.visible = false;
            lowerLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Milddle left main button
        middleLeftButtonMouse.onClicked: {
            middleLeftButtonYesButtonBox.visible = true;
            middleLeftButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);
            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Middle left main button "Yes"
        middleLeftButtonYesButtonMouse.onClicked: {
            middleLeftButtonYesButtonBox.visible = false;
            middleLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
            src.update();
            statusBoxText.text = "Sending... "+middleLeftButtonText.text.replace("\n","");
            send(middleLeftButtonText.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
            statusBox.color="#21ff09";
            accuracyLabel.visible=false;
            accuracyText.visible=false;
            farmText.visible=false;
            mainText.restart();
        }

        //Middle left main button "No"
        middleLeftButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            middleLeftButtonYesButtonBox.visible = false;
            middleLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Middle right main button
        middleRightButtonMouse.onClicked: {
            middleRightButtonYesButtonBox.visible = true;
            middleRightButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);

            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Middle right main button "Yes"
        middleRightButtonYesButtonMouse.onClicked: {
            middleRightButtonYesButtonBox.visible = false;
            middleRightButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
            src.update();
            statusBoxText.text = "Sending... "+middleRightButtonText.text.replace("\n","");
            send(middleRightButtonText.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
            statusBox.color="#21ff09";
            accuracyLabel.visible=false;
            accuracyText.visible=false;
            farmText.visible=false;
            mainText.restart();
        }

        //Middle right main button "No"
        middleRightButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            middleRightButtonYesButtonBox.visible = false;
            middleRightButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Upper left main button
        upperLeftButtonMouse.onClicked: {
            upperLeftButtonYesButtonBox.visible = true;
            upperLeftButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);

            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Upper left main button "Yes"
        upperLeftButtonYesButtonMouse.onClicked: {
            upperLeftButtonYesButtonBox.visible = false;
            upperLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
            src.update();
            statusBoxText.text = "Sending... "+upperLeftButtonText.text.replace("\n","");
            send(upperLeftButtonText.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
            statusBox.color="#21ff09";
            accuracyLabel.visible=false;
            accuracyText.visible=false;
            farmText.visible=false;
            mainText.restart();
        }

        //Upper left main button "No"
        upperLeftButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            upperLeftButtonYesButtonBox.visible = false;
            upperLeftButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }


        //Upper right main button
        upperRightButtonMouse.onClicked: {
            upperRightButtonYesButtonBox.visible = true;
            upperRightButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);
            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Upper right main button "Yes"
        upperRightButtonYesButtonMouse.onClicked: {
            upperRightButtonYesButtonBox.visible = false;
            upperRightButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
            src.update();
            statusBoxText.text = "Sending... "+upperRightButtonText.text.replace("\n","");
            send(upperRightButtonText.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
            statusBox.color="#21ff09";
            accuracyLabel.visible=false;
            accuracyText.visible=false;
            farmText.visible=false;
            mainText.restart();
        }

        //Upper right main button "No"
        upperRightButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            upperRightButtonYesButtonBox.visible = false;
            upperRightButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Lower right main button
        lowerRightButtonMouse.onClicked: {
            lowerRightButtonYesButtonBox.visible = true;
            lowerRightButtonNoButtonBox.visible = true;
            mainMiceEnabled(false);
            src.update();
            latitude=src.position.coordinate.latitude;
            longitude=src.position.coordinate.longitude;
            clientDate=Qt.formatDateTime(new Date(),"yyMMdd");
            clientTime=Qt.formatTime(new Date(),"hh:mm:ss")
            accuracy=src.position.horizontalAccuracy
            gpsTimeStamp=src.position.timestamp
        }

        //Lower right main button "Yes"
        lowerRightButtonYesButtonMouse.onClicked: {
            otherScreenTextInput.text = "";
            lowerRightButtonYesButtonBox.visible = false;
            lowerRightButtonNoButtonBox.visible = false;
            otherScreenBackground.visible = true;
            eagleText.visible = true;
            otherScreenTextInput.forceActiveFocus();
            viewMain(false);
        }

        //Lower right main button "No"
        lowerRightButtonNoButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            lowerRightButtonYesButtonBox.visible = false;
            lowerRightButtonNoButtonBox.visible = false;
            mainMiceEnabled(true);
        }

        //Other "OK" Button
        otherScreenOkButtonMouse.onClicked: {
            otherScreenTextInput.text = otherScreenTextInput.text.trim();
            if( otherScreenTextInput.length > 0 ) {
                otherScreenBackground.visible = false;
                eagleText.visible = false;
                otherScreenTextInput.text = otherScreenTextInput.text.trim();
                src.update();
                statusBoxText.text = "Sending... "+otherScreenTextInput.text.replace("\n","");
                send(otherScreenTextInput.text.replace("\n","")+","+latitude+","+longitude+","+clientDate+","+clientTime+","+nameText+","+passwordText+","+farmText.text+","+accuracy+","+gpsTimeStamp+","+loginScreenVersionNumber.text,false);
                statusBox.color="#21ff09";
                mainText.restart();
                viewMain(true);
                accuracyLabel.visible=false;
                accuracyText.visible=false;
                farmText.visible=false;
            }
        }

        //Other "Cancel" Button
        otherScreenCancelButtonMouse.onClicked: {
            statusBoxText.text = "";
            statusBox.color="#ffffff";
            accuracyLabel.visible=true;
            accuracyText.visible=true;
            farmText.visible=true;
            otherScreenBackground.visible = false;
            eagleText.visible = false;
            viewMain(true);
        }
    }
}
