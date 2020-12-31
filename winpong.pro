QT       += core gui widgets
TARGET = winpong
TEMPLATE = app
CONFIG+=static
QMAKE_LFLAGS+=-static -static-libgcc -static-libstdc++ -lstdc++
DEFINES+=STATIC
CONFIG += c++11
SOURCES += \
    src/ball.cc \
    src/main.cc \
    src/paddle.cc \
    src/pong.cc \
    src/utilities.cc
HEADERS += \
    src/ball.h \
    src/paddle.h \
    src/pong.h \
    src/utilities.h
FORMS +=
RESOURCES += \
    winpong.qrc
INCLUDEPATH +=$$(SDL2_ROOT)/include
INCLUDEPATH +=$$(SDL2_ROOT)/include/SDL2
INCLUDEPATH +=$$(SDL2_TTF_ROOT)/include
INCLUDEPATH += $$(SDL2_MIXER_ROOT)/include
LIBS +=$$(SDL2_ROOT)/lib/libsdl2.a
LIBS +=$$(SDL2_TTF_ROOT)/lib/libSDL2_ttf.a
LIBS +=$$(SDL2_MIXER_ROOT)/lib/libSDL2_mixer.a
LIBS +=$$(FREETYPE_ROOT)/lib/libfreetype.a
LIBS +=$$(MINGW_ROOT)/lib/libimm32.a
LIBS +=$$(MINGW_ROOT)/lib/libsetupapi.a
LIBS +=$$(MINGW_ROOT)/lib/libhid.a
LIBS +=$$(MINGW_ROOT)/lib/libole32.a
LIBS +=$$(MINGW_ROOT)/lib/liboleaut32.a
LIBS +=$$(MINGW_ROOT)/lib/libversion.a
LIBS +=$$(MINGW_ROOT)/lib/libgdi32.a
LIBS +=$$(MINGW_ROOT)/lib/libwinmm.a
LIBS +=$$(MINGW_ROOT)/lib/libws2_32.a
LIBS +=$$(MINGW_ROOT)/lib/libz.a
