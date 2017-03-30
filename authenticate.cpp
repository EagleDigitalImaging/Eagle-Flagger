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


#include "authenticate.h"
#include "filehandler.h"

Authenticate::Authenticate(QObject *parent) : QObject(parent)
{

}


//This funcion returns the user name if it exits. Else, it will return "".
QString Authenticate::getName()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"name.txt");
}

//This funcion returns the user password if it exits. Else, it will return "".
QString Authenticate::getPassword()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"password.txt");
}

//This funcion returns the user farm if it exits. Else, it will return "".
QString Authenticate::getFarm()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"farm.txt");
}

//This function returns the verification code if it exists. Else, it will return "".
QString Authenticate::getVerif()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"verification.txt");
}

//This function clears the name.txt file and sets the user name in the name.txt file.
void Authenticate::setName(QString name)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"name.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"name.txt",name);
}

//This function clears the password.txt file and sets the user name in the password.txt file.
void Authenticate::setPassword(QString password)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"password.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"password.txt",password);
}

//This function clears the farm.txt file and sets the user name in the farm.txt file.
void Authenticate::setFarm(QString farm)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"farm.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"farm.txt",farm);
}

//This funcion clears the verification.txt file and sets the verification code in the verifcation.txt
void Authenticate::setVerif(QString verif)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"verification.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"verification.txt",verif);
}
