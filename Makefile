# ==================== [START] Global Variable Declaration =================== #
SHELL := /bin/bash
# 'shell' removes newlines
BASE_DIR := $(shell pwd)

UNAME_S := $(shell uname -s)

# exports all variables
export
# ===================== [END] Global Variable Declaration ==================== #

build_with_deps:
	@docker-compose -f "${BASE_DIR}/docker/docker-compose.yml" run builder

build:
	@docker-compose -f "${BASE_DIR}/docker/docker-compose-quick.yml" run builder
