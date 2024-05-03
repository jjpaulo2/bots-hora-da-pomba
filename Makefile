EVOBOT_REPO = https://github.com/eritislami/evobot.git
AOEDE_REPO = https://github.com/codetheweb/aoede.git
EVOBOT_VERSION = 2.8.1
AOEDE_VERSION = 0.7.1
BUILD_DIR = build

evobot.tar.gz:
	@git clone -b $(EVOBOT_VERSION) --single-branch $(EVOBOT_REPO) $(BUILD_DIR)/evobot
	@docker build -t evobot:$(EVOBOT_VERSION) $(BUILD_DIR)/evobot
	@docker save evobot:$(EVOBOT_VERSION) | gzip > $(BUILD_DIR)/evobot.tar.gz

aoede.tar.gz:
	@git clone -b $(AOEDE_VERSION) --single-branch $(AOEDE_REPO) $(BUILD_DIR)/aoede
	@docker build -t aoede:$(AOEDE_VERSION) $(BUILD_DIR)/aoede
	@docker save aoede:$(AOEDE_VERSION) | gzip > $(BUILD_DIR)/aoede.tar.gz
