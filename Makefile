.PHONY: build

VERSION := "1.4.15"
IMAGE := "emgag/proxysql"

build:
	docker build --pull \
		--build-arg VERSION=${VERSION} \
		-t ${IMAGE}:${VERSION} \
		-t ${IMAGE}:1.4 \
		.
	docker push ${IMAGE}:${VERSION}
	docker push ${IMAGE}:1.4

