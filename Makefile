IMAGE="quay.io/amboss-mededu/pyfmt"
IMAGE_TAG=0.7

.PHONY: build
build:
	docker build -t $(IMAGE):$(IMAGE_TAG) .

.PHONY push
push:
	docker push $(IMAGE):$(IMAGE_TAG)

.PHONY: list-packages
list-packages:
	docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:$(IMAGE_TAG) pip freeze | grep 'mypy=\|black=\|flake8=\|isort='
