export IMAGE=checkio/nginx-static


all:
	docker build -t ${IMAGE} .
