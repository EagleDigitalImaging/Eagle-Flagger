# Copyright (C) 2017 - Eagle Digital Imaging, Inc.
#    This file is part of Flagger.
#
#    Flagger is free software: you can redistribute it and/or modify
#    it under the terms of the Lesser GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    Flagger is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    Lesser GNU General Public License for more details.

#    You should have received a copy of the Lesser GNU General Public License
#    along with Flagger.  If not, see <http://www.gnu.org/licenses/>.


TEMPLATE = app

QT += qml quick positioning
CONFIG += c++11

SOURCES += main.cpp \
    authenticate.cpp \
    buttonhandler.cpp \
    emailaddress.cpp \
    emailclass.cpp \
    filehandler.cpp \
    mimeattachment.cpp \
    mimecontentformatter.cpp \
    mimefile.cpp \
    mimehtml.cpp \
    mimeinlinefile.cpp \
    mimemessage.cpp \
    mimemultipart.cpp \
    mimepart.cpp \
    mimetext.cpp \
    quotedprintable.cpp \
    smtpclient.cpp

RESOURCES += qml.qrc \
    images.qrc \
    list.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

SUBDIRS += \
    Flagger_Prototype.pro

DISTFILES += \
    Eagle-Logo-500.png \
    edit_icon.png \
    android-sources/AndroidManifest.xml \
    android-sources/gradle/wrapper/gradle-wrapper.jar \
    android-sources/gradlew \
    android-sources/res/values/libs.xml \
    android-sources/build.gradle \
    android-sources/gradle/wrapper/gradle-wrapper.properties \
    android-sources/gradlew.bat

HEADERS += \
    authenticate.h \
    buttonhandler.h \
    emailaddress.h \
    emailclass.h \
    filehandler.h \
    mimeattachment.h \
    mimecontentformatter.h \
    mimefile.h \
    mimehtml.h \
    mimeinlinefile.h \
    mimemessage.h \
    mimemultipart.h \
    mimepart.h \
    mimetext.h \
    quotedprintable.h \
    smtpclient.h \
    smtpmime.h

ANDROID_PACKAGE_SOURCE_DIR=$$PWD/android-sources
