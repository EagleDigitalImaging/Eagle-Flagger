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

#include "emailclass.h"
#include <QDebug>

EmailClass::EmailClass(QObject *parent) : QObject(parent)
{

}


//This function will send an email containing the message passed to it.
int EmailClass::sendEmail(QString msg, bool send)
{
    // First we setup the cache

    FileHandler mFile;

    if(send)
    {
        // Then we create a MimeText object.
        MimeText text;

        // Then we need to check the cache to see if anything has been stored

        if(mFile.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt").length()>0 && msg.length()>0){
            text.setText(mFile.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt")+msg);
//            qDebug() << text.getText();
        } else if(mFile.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt").length()>0){
            text.setText(mFile.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt"));
        } else if(msg.length()>0){
            text.setText(msg);
        } else return -4;


        // Now we need to create an SmtpClient object

        SmtpClient smtp(mFile.Read(":/Verif","SMTP.txt").simplified(), 587, SmtpClient::TcpConnection);

        // We need to set the username (your email address) and password
        // for smtp authentification.

        smtp.setUser(mFile.Read(":/Verif","User.txt").simplified());
        smtp.setPassword(mFile.Read(":/Verif","Password.txt").simplified());

        // Now we create a MimeMessage object. This is the email.

        MimeMessage message;

        
        EmailAddress sender(mFile.Read(":/Verif","User.txt").simplified(), "Flagger App");
        message.setSender(&sender);

        EmailAddress to(mFile.Read(":/Verif","Address.txt").simplified(), "Eagle Nest");


        message.addRecipient(&to);

        //message.setSubject("SmtpClient for Qt - Demo");
        message.setSubject("Flagger");

        // Now add some text to the email.


        // Now add it to the mail

        message.addPart(&text);


        // Now we can send the mail

        if (!smtp.connectToHost()) {
 //           qDebug() << "Failed to connect to host!" << endl;
            if(msg.length()>0) mFile.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt",msg+"\n\n,");
            return -1;
        }

        if (!smtp.login()) {
 //           qDebug() << "Failed to login!" << endl;
            if(msg.length()>0) mFile.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt",msg+"\n\n,");
            return -2;
        }
        if (!smtp.sendMail(message)) {
//            qDebug() << "Failed to send mail!" << endl;
            if(msg.length()>0) mFile.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt",msg+"\n\n,");
            return -3;
        } else {
            mFile.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt");
        }

        smtp.quit();
        return 0;
    }
    else
    {
        if(msg.length()>0) mFile.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"cache.txt",msg+"\n\n,");
        return -1;
    }
}
