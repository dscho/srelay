# Included by top-level Android.mk

include $(CLEAR_VARS)

SRELAY_LOCAL_CFLAGS = \
	-g \
        -DHAVE_U_INT8_T -DHAVE_U_INT16_T -DHAVE_U_INT32_T -DHAVE_SOCKLEN_T \
	-DHAVE_UNISTD_H -DHAVE_IOCTL_H -DLINUX -DANDROID

SRELAY_LOCAL_LDLIBS = -L$(SYSROOT)/usr/lib

# Build srelay binary
LOCAL_SRC_FILES:= 	srelay/auth-pwd.c \
			srelay/get-bind.c \
			srelay/init.c \
			srelay/main.c \
			srelay/readconf.c \
			srelay/relay.c \
			srelay/socks.c \
			srelay/util.c
LOCAL_CFLAGS += $(SRELAY_LOCAL_CFLAGS)
LOCAL_LDLIBS := $(SRELAY_LOCAL_LDLIBS)
LOCAL_MODULE:= srelay
include $(BUILD_EXECUTABLE)
