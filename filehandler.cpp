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


#include "filehandler.h"

FileHandler::FileHandler(QObject *parent) : QObject(parent)
{

}


//This function will clear the file specified by the directory path and file name passed to it.
//If the directory does not exist, it will create it.
//If the file does not exist, it will create it.
void FileHandler::clearFile(QString DirName, QString FileName)
{
    Directory(DirName);
    QFile mFile(DirName+"/"+FileName);
    if(!mFile.open(QFile::WriteOnly | QFile::Text))
    {
        return;
    }
    QTextStream stream(&mFile);
    stream << "";

    mFile.flush();
    mFile.close();
}

//This function returns all of the text in the file specified by the directory path and file name passed to it.
//If the directory does not exist, it will create it.
//If the file does not exist, it will create it.
QString FileHandler::Read(QString DirName, QString FileName)
{
    Directory(DirName);
    QFile mFile(DirName+"/"+FileName);
    if(!mFile.open(QFile::ReadOnly | QFile::Text))
    {
       return "";
    }
    QTextStream stream(&mFile);
    QString mText = stream.readAll();

    mFile.close();
    return mText;
}

//This function appends the text sent to it to the file specified by the directory path and file name passsed to it.
//If the directory does not exist, it will create it.
//If the file does not exist, it will create it.
void FileHandler::Write(QString DirName, QString FileName, QString text)
{
    Directory(DirName);
    QFile mFile(DirName+"/"+FileName);
    if(!mFile.open(QFile::Append | QFile::Text))
    {
        return;
    }
    QTextStream stream(&mFile);
    stream << text;

    mFile.flush();
    mFile.close();
}

//This function checks to see if a directory exists at the directory path specified.
//If the directory does not exist, it will create it.
void FileHandler::Directory(QString DirectoryName)
{
    QDir dir(DirectoryName);
    if(!dir.exists())
    {
        dir.mkpath(".");
    }
}
