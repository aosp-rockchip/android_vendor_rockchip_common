PRODUCT_COPY_FILES += \
        $(CUR_PATH)/wifi/iwconfig:$(TARGET_COPY_OUT_VENDOR)/bin/iwconfig \
        $(CUR_PATH)/wifi/iwlist:$(TARGET_COPY_OUT_VENDOR)/bin/iwlist

WifiFirmwareFile := $(shell ls $(CUR_PATH)/wifi/firmware)
PRODUCT_COPY_FILES += \
        $(foreach file, $(WifiFirmwareFile), $(CUR_PATH)/wifi/firmware/$(file):$(TARGET_COPY_OUT_VENDOR)/etc/firmware/$(file))
