export TARGET = iphone:clang:latest:15.0
export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SunProgMod
SunProgMod_FILES = Tweak.x
SunProgMod_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
