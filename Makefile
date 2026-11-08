TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

# مكتبة مستقلة (dylib) بدون أي اعتماد على Substrate / ElleKit / Logos
LIBRARY_NAME = DomainSniffer

DomainSniffer_FILES = Tweak.mm
DomainSniffer_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-function -Wno-unused-variable -Wno-undeclared-selector -Wno-arc-performSelector-leaks -Wno-misleading-indentation -Wno-implicit-retain-self
DomainSniffer_FRAMEWORKS = UIKit Foundation QuartzCore AVFoundation

include $(THEOS_MAKE_PATH)/library.mk
