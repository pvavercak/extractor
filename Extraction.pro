QT       += gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TARGET = Extraction
TEMPLATE = lib
DEFINES += EXTRACTION_LIBRARY
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += CPU_ONLY
DEFINES -= NO_CPU

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

#CUDA
#unix:!macx: LIBS += -L/opt/cuda/lib64/ -lcudart
#INCLUDEPATH += /opt/cuda/include
#DEPENDPATH += /opt/cuda/include

#Caffe
unix:!macx: LIBS += -L/usr/local/lib64/ -lcaffe
INCLUDEPATH += /home/pva/caffe/include
DEPENDPATH += /home/pva/caffe/include

unix:!macx: LIBS += -L/usr/lib/ -lboost_system
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include

unix:!macx: LIBS += -L/usr/lib/ -lglog
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include

unix:!macx: LIBS += -L/usr/lib/ -lprotobuf
INCLUDEPATH += /usr/include
DEPENDPATH += /usr/include
