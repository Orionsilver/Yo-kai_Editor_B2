#-------------------------------------------------
#
# Project created by QtCreator 2016-03-15T09:45:07
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = "Yo-kai Editor B2"
TEMPLATE = app

CONFIG += c++11

INCLUDEPATH += src

SOURCES += src/main.cpp\
        src/mainwindow.cpp \
    src/version_dialog.cpp \
    src/savemanager.cpp \
    src/xorshift.cpp \
    src/ywcipher.cpp \
    src/ccmcipher.cpp \
    src/crc32.cpp \
    src/error.cpp \
    src/tab.cpp \
    src/listtab.cpp \
    src/youkaitab.cpp \
    src/gamedata.cpp \
    src/gameconfig.cpp \
    src/manualeditdialog.cpp \
    src/QHexEdit/qhexedit.cpp \
    src/QHexEdit/qhexeditcomments.cpp \
    src/QHexEdit/qhexeditdata.cpp \
    src/QHexEdit/qhexeditdatadevice.cpp \
    src/QHexEdit/qhexeditdatareader.cpp \
    src/QHexEdit/qhexeditdatawriter.cpp \
    src/QHexEdit/qhexedithighlighter.cpp \
    src/QHexEdit/qhexeditprivate.cpp \
    src/QHexEdit/sparserangemap.cpp \
    src/itemtab.cpp \
    src/equipmenttab.cpp \
    src/importanttab.cpp \
    src/section1tab.cpp \
    src/section.cpp \
    src/section9tab.cpp \
    src/medaliumtab.cpp \
    src/youkaichecklist.cpp \
    src/section242tab.cpp \
    src/hackslashtab.cpp \
    src/gashatab.cpp \
    src/gashalot.cpp \
    src/checklist.cpp \
    src/flagchecklist.cpp \
    src/trophychecklist.cpp \
    src/cheatcodedialog.cpp \
    src/cybercode/AddCode.cpp \
    src/cybercode/CyberCode.cpp \
    src/cybercode/CyberCodeParser.cpp \
    src/cybercode/LoopCode.cpp \
    src/cybercode/OffsetCode.cpp \
    src/cybercode/SearchCode.cpp \
    src/cybercode/SectionWriteCode.cpp \
    src/cybercode/WriteCode.cpp \
    src/cybercode/SectionOffsetCode.cpp \
    src/dataeditor/dataeditor.cpp \
    src/dataeditor/integereditor.cpp \
    src/dataeditor/biteditor.cpp \
    src/dataeditor/stringeditor.cpp \
    src/dataeditor/listeditor.cpp \
    src/dataeditor/hexintegereditor.cpp \
    src/gashastate.cpp \
    src/battleitemtab.cpp

HEADERS  += src/mainwindow.h \
    src/version.h \
    src/version_dialog.h \
    src/savemanager.h \
    src/gameconfig.h \
    src/xorshift.h \
    src/ywcipher.h \
    src/ccmcipher.h \
    src/crc32.h \
    src/error.h \
    src/tab.h \
    src/listtab.h \
    src/youkaitab.h \
    src/gamedata.h \
    src/manualeditdialog.h \
    src/QHexEdit/qhexedit.h \
    src/QHexEdit/qhexeditcomments.h \
    src/QHexEdit/qhexeditdata.h \
    src/QHexEdit/qhexeditdatadevice.h \
    src/QHexEdit/qhexeditdatareader.h \
    src/QHexEdit/qhexeditdatawriter.h \
    src/QHexEdit/qhexedithighlighter.h \
    src/QHexEdit/qhexeditprivate.h \
    src/QHexEdit/sparserangemap.h \
    src/itemtab.h \
    src/equipmenttab.h \
    src/importanttab.h \
    src/section1tab.h \
    src/section.h \
    src/section9tab.h \
    src/medaliumtab.h \
    src/youkaichecklist.h \
    src/section242tab.h \
    src/hackslashtab.h \
    src/gashatab.h \
    src/gashalot.h \
    src/checklist.h \
    src/flagchecklist.h \
    src/trophychecklist.h \
    src/cheatcodedialog.h \
    src/cybercode/AddCode.h \
    src/cybercode/CyberCode.h \
    src/cybercode/CyberCodeParser.h \
    src/cybercode/LoopCode.h \
    src/cybercode/OffsetCode.h \
    src/cybercode/SearchCode.h \
    src/cybercode/SectionWriteCode.h \
    src/cybercode/WriteCode.h \
    src/cybercode/SectionOffsetCode.h \
    src/dataeditor/dataeditor.h \
    src/dataeditor/integereditor.h \
    src/dataeditor/biteditor.h \
    src/dataeditor/stringeditor.h \
    src/dataeditor/listeditor.h \
    src/dataeditor/hexintegereditor.h \
    src/gashastate.h \
    src/battleitemtab.h

FORMS    += src/ui/mainwindow.ui \
    src/ui/version_dialog.ui \
    src/ui/manualeditdialog.ui \
    src/ui/section1tab.ui \
    src/ui/section9tab.ui \
    src/ui/medaliumtab.ui \
    src/ui/listtab.ui \
    src/ui/youkaitabform.ui \
    src/ui/itemtabform.ui \
    src/ui/equipmenttabform.ui \
    src/ui/importanttabform.ui \
    src/ui/section242tab.ui \
    src/ui/hackslashtabform.ui \
    src/ui/gashatab.ui \
    src/ui/cheatcodedialog.ui \
    src/ui/battleitemtabform.ui

TRANSLATIONS = $$PWD/translations/app_ja.ts \
$$PWD/translations/app_en.ts

macx {
APPBUNDLE = "Yo-kai Editor B2.app"
ICON = icon.icns
LIBS += -L$$PWD/../../local/lib -lcryptopp
INCLUDEPATH += $$PWD/../../local/include
QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas
QMAKE_TARGET_BUNDLE_PREFIX = jp.togenyan
}

win32:LIBS += -L$$PWD/../lib/ -lcryptlib

win32:INCLUDEPATH += $$PWD/../include
win32:DEPENDPATH += $$PWD/../include

RESOURCES += \
    resources.qrc
RC_FILE = app.rc
