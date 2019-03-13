.PHONY: build 1.4 2.0

VERSION_14 := "1.4.15"
VERSION_20 := "2.0.2"
IMAGE := "emgag/proxysql"

build: 1.4 2.0

1.4:
	docker build --pull \
		--build-arg VERSION=${VERSION_14} \
		-t ${IMAGE}:${VERSION_14} \
		1.4
	docker push ${IMAGE}:${VERSION_14}

2.0:
	docker build --pull \
		--build-arg VERSION=${VERSION_20} \
		-t ${IMAGE}:${VERSION_20} \
		2.0
	docker push ${IMAGE}:${VERSION_20}

