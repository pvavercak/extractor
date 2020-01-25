QT       += gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TARGET = Extraction
TEMPLATE = lib
DEFINES += EXTRACTION_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += CPU_ONLY
DEFINES -= NO_CPU
DEFINES += BOOST_SYSTEM_NO_DEPRECATED

QMAKE_CFLAGS_ISYSTEM=

SOURCES += \
    extraction.cpp \
    crossingnumber.cpp \
    neuralchecker.cpp \
    isoconverter.cpp \
    orientationfixer.cpp \
    extraction_caffenetwork.cpp

HEADERS +=\
    extraction.h \
    extraction_global.h \
    crossingnumber.h \
    neuralchecker.h \
    isoconverter.h \
    orientationfixer.h \
    extraction_config.h \
    extraction_caffenetwork.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

#Caffe
unix:!macx: LIBS += -L/usr/lib/x86_64-linux-gnu -lcaffe
INCLUDEPATH += /usr/include/caffe \
               /usr/include/caffe/proto \
               /usr/include/caffe/util \

unix:!macx: LIBS += -L/usr/lib/ -lboost_system
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include

unix:!macx: LIBS += -L/usr/lib/ -lglog
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include

unix:!macx: LIBS += -L/usr/lib/ -lprotobuf
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include


