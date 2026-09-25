# Define the custom include directory path
CUSTOM_INC_DIR = $(ONEWIFI_EM_HOME)/custom/inc

# Add the include path to CXXFLAGS (for C++ .cpp files) and CFLAGS
CXXFLAGS += -I$(CUSTOM_INC_DIR)
CFLAGS   += -I$(CUSTOM_INC_DIR)

# (Optional) If using standard local Make variables instead of OpenWrt build targets:
# INCLUDES += -I$(CUSTOM_INC_DIR)

# Listed explicitly rather than via $(wildcard): Automake parses _SOURCES
# statically when generating Makefile.in and can't see wildcard results,
# so new files here must also be added to these lists by hand.
CUSTOM_COMMON_SOURCES = \
    $(ONEWIFI_EM_HOME)/custom/src/common/lq_socket.cpp

CUSTOM_AGENT_SOURCES = \
    $(CUSTOM_COMMON_SOURCES)

CUSTOM_CTRL_SOURCES = \
    $(CUSTOM_COMMON_SOURCES) \
    $(ONEWIFI_EM_HOME)/custom/src/ctrl/vendor_ctrl.cpp \
    $(ONEWIFI_EM_HOME)/custom/src/ctrl/vendor_subscription.cpp