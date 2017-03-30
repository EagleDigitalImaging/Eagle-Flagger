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

#ifndef AUTHENTICATE_H
#define AUTHENTICATE_H

#include <QObject>

class Authenticate : public QObject
{
    Q_OBJECT
public:
    explicit Authenticate(QObject *parent = 0);
    Q_INVOKABLE QString getName();
    Q_INVOKABLE QString getPassword();
    Q_INVOKABLE QString getFarm();
    Q_INVOKABLE QString getVerif();
    Q_INVOKABLE void setName(QString name);
    Q_INVOKABLE void setPassword(QString password);
    Q_INVOKABLE void setFarm(QString farm);
    Q_INVOKABLE void setVerif(QString verif);

signals:

public slots:
};

#endif // AUTHENTICATE_H
