[ "$FREETZ_TYPE_FON_WLAN_7270_16MB" == "y" -a "$FREETZ_TYPE_LANG_DE" == "y" ] || return 0

echo1 "applying 16MB patch"
sed -i \
	-e 's/kernel_start=0x90010000/kernel_start=0x90020000/' \
	-e 's/kernel_size=7798784/kernel_size=16121856/' \
	-e 's/urlader_size=65536/urlader_size=131072/' \
	"${FIRMWARE_MOD_DIR}/var/install"
