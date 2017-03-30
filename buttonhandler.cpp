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


#include "buttonhandler.h"
#include "filehandler.h"

ButtonHandler::ButtonHandler(QObject *parent) : QObject(parent)
{

}

//This funcion returns the label for button one if it exits. Else, it will return "".
QString ButtonHandler::getButtonOne()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonone.txt");
}

//This funcion returns the label for button two if it exits. Else, it will return "".
QString ButtonHandler::getButtonTwo()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttontwo.txt");
}

//This funcion returns the label for button three if it exits. Else, it will return "".
QString ButtonHandler::getButtonThree()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonthree.txt");
}

//This funcion returns the label for button four if it exits. Else, it will return "".
QString ButtonHandler::getButtonFour()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfour.txt");
}

//This funcion returns the label for button five if it exits. Else, it will return "".
QString ButtonHandler::getButtonFive()
{
    FileHandler file;
    return file.Read(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfive.txt");
}

//This function clears the buttonone.txt file and sets the label in the buttonone.txt file.
void ButtonHandler::setButtonOne(QString label)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonone.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonone.txt",label);
}

//This function clears the buttontwo.txt file and sets the label in the buttontwo.txt file.
void ButtonHandler::setButtonTwo(QString label)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttontwo.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttontwo.txt",label);
}

//This function clears the buttonthree.txt file and sets the label in the buttonthree.txt file.
void ButtonHandler::setButtonThree(QString label)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonthree.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonthree.txt",label);
}

//This function clears the buttonfour.txt file and sets the label in the buttonfour.txt file.
void ButtonHandler::setButtonFour(QString label)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfour.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfour.txt",label);
}

//This function clears the buttonfive.txt file and sets the label in the buttonfive.txt file.
void ButtonHandler::setButtonFive(QString label)
{
    FileHandler file;
    file.clearFile(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfive.txt");
    file.Write(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation),"buttonfive.txt",label);
}
