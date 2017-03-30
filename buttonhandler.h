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

#ifndef BUTTONHANDLER_H
#define BUTTONHANDLER_H

#include <QObject>

class ButtonHandler : public QObject
{
    Q_OBJECT
public:
    explicit ButtonHandler(QObject *parent = 0);
    Q_INVOKABLE QString getButtonOne();
    Q_INVOKABLE QString getButtonTwo();
    Q_INVOKABLE QString getButtonThree();
    Q_INVOKABLE QString getButtonFour();
    Q_INVOKABLE QString getButtonFive();
    Q_INVOKABLE void setButtonOne(QString label);
    Q_INVOKABLE void setButtonTwo(QString label);
    Q_INVOKABLE void setButtonThree(QString label);
    Q_INVOKABLE void setButtonFour(QString label);
    Q_INVOKABLE void setButtonFive(QString label);


signals:

public slots:
};

#endif // BUTTONHANDLER_H
