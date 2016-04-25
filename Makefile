CONTAINER = lynxtp/ubuntu
VERSION = 16.04

DOCKER ?= docker

.PHONY = build clean

build: .built

.built: Dockerfile
	@$(DOCKER) build -t $(CONTAINER):$(VERSION) .
	@touch $@

clean:
	@rm -f .built
