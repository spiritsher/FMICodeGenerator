# ----------------------------------
# Project for FMU Test/Example cases
# ----------------------------------

TARGET = Test08
TEMPLATE = lib

# no GUI
QT -= core gui

CONFIG(debug, debug|release) {
	windows {
		DLLDESTDIR = ../../bin/debug$${DIR_PREFIX}
	}
	else {
		DESTDIR = ../../bin/debug$${DIR_PREFIX}
	}
}
else {
	windows {
		DLLDESTDIR = ../../bin/release$${DIR_PREFIX}
	}
	else {
		DESTDIR = ../../bin/release$${DIR_PREFIX}
	}
}

#DEFINES += FMI2_FUNCTION_PREFIX=Test08_

unix|mac {
	VER_MAJ = 1
	VER_MIN = 0
	VER_PAT = 0
	VERSION = $${VER_MAJ}.$${VER_MIN}.$${VER_PAT}
}

INCLUDEPATH = ../../src

SOURCES += \
	../../src/fmi2common/fmi2Functions.cpp \
	../../src/fmi2common/InstanceData.cpp \
	../../src/Test08.cpp

HEADERS += \
	../../src/fmi2common/fmi2Functions.h \
	../../src/fmi2common/fmi2Functions_complete.h \
	../../src/fmi2common/fmi2FunctionTypes.h \
	../../src/fmi2common/fmi2TypesPlatform.h \
	../../src/fmi2common/InstanceData.h \
	../../src/Test08.h


rt3.h


