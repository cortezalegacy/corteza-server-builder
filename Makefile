.PHONY: build push

REPOSITORY  = cortezaproject/corteza-server-builder
BRANCH     ?= $(shell git rev-parse --abbrev-ref HEAD)
IMAGE_TAG  ?= $(if BRANCH=master,latest,$BRANCH)

build:
	docker build --no-cache --rm -t $(REPOSITORY):$(IMAGE_TAG) .

push:
	docker push $(REPOSITORY):$(IMAGE_TAG)
