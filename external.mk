include $(sort $(wildcard $(BR2_EXTERNAL_CN913X_PATH)/package/*/*.mk))

.PHONY: run
run:
	@$(BR2_EXTERNAL_CN913X_PATH)/utils/qemu $O
