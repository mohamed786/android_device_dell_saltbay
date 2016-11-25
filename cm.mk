# Inherit device configuration
$(call inherit-product, device/dell/saltbay/full_saltbay.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=saltbay \
	PRIVATE_BUILD_DESC="saltbay_64-user 4.4.4 KTU84P eng.YTD802A555000.20151009.061051 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_saltbay
PRODUCT_BRAND := Dell
PRODUCT_MODEL := Venue7 3740 LTE
PRODUCT_MANUFACTURER := Dell
PRODUCT_DEVICE := saltbay
PRODUCT_CHARACTERISTICS := tablet

