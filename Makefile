init:
	go mod init github.com/luebken/golang-template
	go mod tidy

build:
	go build -o bin/api ./cmd/api

run:
	go run cmd/api/main.go

docker-build:
	docker build . -f Dockerfile -t luebken/golang-template:latest

docker-run:
	docker run luebken/golang-template:latest

docker-push:
	docker push luebken/golang-template:latest
