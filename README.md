# Eagle-Flagger

This application was developed to allow users to quickly create a georeferenced flag that is sent via email. Currently, the app makes use of SMTP to send emails, the details of which must be provided in separate text (.txt) files by the compiler. This application was developed under the LGPL version of Qt.
The following files are required by the application in order to work correctly:
Address.txt – This file is a single line that includes a valid email address that the application will attempt to send emails to.
Farms.txt – This file contains a list of comma separated names. In the original usage of this, these are different farms that the end user can associate a flag with.
Password.txt – This file contains a single line that includes the password to whatever SMTP account that is chosen to send the emails. In the original usage of this, a Mailgun account was created, so the password here was that associated with the specific Mailgun server being used.
SMTP.txt – This file contains the SMTP host information. In the original usage of this, Mailgun was used as the SMTP host.
User.txt – This file contains a single line that includes the user name associated with whatever SMTP account that is chosen to send emails. In the original usage of this, a Mailgun account was created, the user name here was the specific Mailgun server being used.
Verify.txt – This file contains a single line that includes a password that will be used to gain access to the application on the user device the first time the application is run.
Version.txt – This file contains a single line that includes the version number of the application that will be displayed when the application is run.

Building the Code
iOS
1.	Install the latest Xcode developer tools from Apple

2.	Download and install Qt for iOS

2.	Clone the repository from gitHub

*EagleDigitalImaging/Eagle-Flagger

4.	Open and compile project in Qt for iOs

5.	Build resulting file in XCode. From here you can release the app to an attached user iOS device


Android
1.	Download and install Qt for Android

2.	Clone the repository from gitHub

*EagleDigitalImaging/Eagle-Flagger

3.	Open and build project in Qt for iOS. From here you can release the app to an attached user Android device.

License
This project is licensed under the GNU LGPL, version 3.
Copyright © 2017 – Eagle Digital Imaging, Inc.
