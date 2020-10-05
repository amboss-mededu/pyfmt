IMAGE="quay.io/amboss-mededu/pyfmt"
IMAGE_TAG=0.7

.PHONY: build push
build:
	docker build -t $(IMAGE):$(IMAGE_TAG) .

push:
	docker push $(IMAGE):$(IMAGE_TAG)