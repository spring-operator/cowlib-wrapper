APP_NAME:=cowlib

UPSTREAM_GIT:=https://github.com/ninenines/cowlib.git
UPSTREAM_REVISION:=7d8a571b1e50602d701ca203fbf28036b2cf80f5 # 1.0.1
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=10-remove-crypto-dependency.patch

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-ISC-Cowboy
endef
