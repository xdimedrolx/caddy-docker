IMAGE ?= xdimedrolx/caddy
LABEL ?= 1.0.3-no-stats

.PHONY: all

all: build push

build:
	docker build -t $(IMAGE):$(LABEL) .

push:
	docker push $(IMAGE):$(LABEL)
