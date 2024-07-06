EVOBOT_REPO = https://github.com/eritislami/evobot.git
AOEDE_REPO = https://github.com/codetheweb/aoede.git
EVOBOT_VERSION = 2.8.1
AOEDE_VERSION = v0.7.1
BUILD_DIR = build

evobot.tar.gz:
	@git clone -b $(EVOBOT_VERSION) --single-branch $(EVOBOT_REPO) $(BUILD_DIR)/evobot
	@docker build -t evobot:make $(BUILD_DIR)/evobot
	@echo "Exporting evobot.tar.gz..."
	@docker save evobot:make | gzip > $(BUILD_DIR)/evobot.tar.gz

aoede.tar.gz:
	@git clone -b $(AOEDE_VERSION) --single-branch $(AOEDE_REPO) $(BUILD_DIR)/aoede
	@docker build -t aoede:make $(BUILD_DIR)/aoede
	@echo "Exporting aoede.tar.gz..."
	@docker save aoede:make | gzip > $(BUILD_DIR)/aoede.tar.gz
