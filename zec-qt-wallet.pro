#-------------------------------------------------
#
# Project created by QtCreator 2018-10-05T09:54:45
#
#-------------------------------------------------

QT       += core gui network

CONFIG += precompile_header

PRECOMPILED_HEADER = src/precompiled.h

QT += widgets
QT += websockets

TARGET = zecwallet

TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += \
    QT_DEPRECATED_WARNINGS

INCLUDEPATH  += src/3rdparty/

RESOURCES     = application.qrc

MOC_DIR = bin
OBJECTS_DIR = bin
UI_DIR = src

CONFIG += c++14

SOURCES += \
    src/main.cpp \
    src/mainwindow.cpp \
    src/rpc.cpp \
    src/balancestablemodel.cpp \
    src/3rdparty/qrcode/BitBuffer.cpp \
    src/3rdparty/qrcode/QrCode.cpp \
    src/3rdparty/qrcode/QrSegment.cpp \
    src/settings.cpp \
    src/sendtab.cpp \
    src/senttxstore.cpp \
    src/txtablemodel.cpp \
    src/turnstile.cpp \
    src/qrcodelabel.cpp \
    src/connection.cpp \
    src/fillediconlabel.cpp \
    src/addressbook.cpp \
    src/logger.cpp \
    src/addresscombo.cpp \
    src/validateaddress.cpp \
    src/websockets.cpp \
    src/mobileappconnector.cpp \
    src/recurring.cpp \
    src/requestdialog.cpp \
    src/memoedit.cpp \
    src/viewalladdresses.cpp

HEADERS += \
    src/mainwindow.h \
    src/precompiled.h \
    src/rpc.h \
    src/balancestablemodel.h \
    src/3rdparty/qrcode/BitBuffer.hpp \
    src/3rdparty/qrcode/QrCode.hpp \
    src/3rdparty/qrcode/QrSegment.hpp \
    src/3rdparty/json/json.hpp \
    src/settings.h \
    src/txtablemodel.h \
    src/senttxstore.h \
    src/turnstile.h \
    src/qrcodelabel.h \
    src/connection.h \
    src/fillediconlabel.h \
    src/addressbook.h \
    src/logger.h \
    src/addresscombo.h \
    src/validateaddress.h \
    src/websockets.h \
    src/mobileappconnector.h \
    src/recurring.h \
    src/requestdialog.h \
    src/memoedit.h \
    src/viewalladdresses.h 

FORMS += \
    src/mainwindow.ui \
    src/migration.ui \
    src/recurringpayments.ui \
    src/settings.ui \
    src/about.ui \
    src/confirm.ui \
    src/turnstile.ui \
    src/turnstileprogress.ui \
    src/privkey.ui \
    src/memodialog.ui \ 
    src/validateaddress.ui \
    src/viewalladdresses.ui \
    src/connection.ui \
    src/zboard.ui \
    src/addressbook.ui \
    src/mobileappconnector.ui \
    src/createzcashconfdialog.ui \
    src/recurringdialog.ui \
    src/newrecurring.ui \
    src/requestdialog.ui \
    src/recurringmultiple.ui


TRANSLATIONS = res/zec_qt_wallet_es.ts \
               res/zec_qt_wallet_fr.ts \
               res/zec_qt_wallet_de.ts \
               res/zec_qt_wallet_pt.ts \
               res/zec_qt_wallet_it.ts \
               res/zec_qt_wallet_zh.ts

include(singleapplication/singleapplication.pri)
DEFINES += QAPPLICATION_CLASS=QApplication

QMAKE_INFO_PLIST = res/Info.plist

win32: RC_ICONS = res/icon.ico
ICON = res/logo.icns

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/res/ -llibsodium
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/res/ -llibsodiumd
else:unix: LIBS += -L$$PWD/res/ -lsodium

INCLUDEPATH += $$PWD/res
DEPENDPATH += $$PWD/res

