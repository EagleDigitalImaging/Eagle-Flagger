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

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "emailclass.h"
#include "authenticate.h"
#include "buttonhandler.h"

#include "filehandler.h"

#include <QQmlEngine>
#include <QQmlContext>
#include <QQmlComponent>

#include <QDebug>

void onClose(){
    EmailClass mail;
    mail.sendEmail("", true);
}



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);    

    QScopedPointer<EmailClass> mail(new EmailClass);

    QScopedPointer<Authenticate> auth(new Authenticate);

    QScopedPointer<ButtonHandler> buttonHandle(new ButtonHandler);

    QScopedPointer<FileHandler> fileHandle(new FileHandler);

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("mail",mail.data());
    engine.rootContext()->setContextProperty("auth",auth.data());
    engine.rootContext()->setContextProperty("buttonHandle", buttonHandle.data());

    engine.rootContext()->setContextProperty("fileHandle",fileHandle.data());

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject::connect(&app, &QGuiApplication::applicationStateChanged, onClose);

    return app.exec();
}

