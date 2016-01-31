ARCHS = armv7 arm64

include theos/makefiles/common.mk

APPLICATION_NAME = GlassObject
GlassObject_FILES = main.m GlassObjectApplication.mm RootViewController.mm
GlassObject_FRAMEWORKS = UIKit CoreGraphics SceneKit

include $(THEOS_MAKE_PATH)/application.mk
