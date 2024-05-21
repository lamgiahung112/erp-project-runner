SHELL=cmd.exe
REQUEST_BROKER_BINARY=requestBrokerApp
USER_SERVICE_BINARY=userServiceApp

## up: starts containers without forcing build
up:
	@echo Starting docker images
	docker-compose up -d
	@echo Docker images started

## up_build: forces build then starts containers
up_build:
	@echo Stopping images (if running)
	docker-compose down
	@echo Building images (if required) and starting...
	docker-compose up --build -d
	@echo Docker images built and started!

## down: stop docker compose
down:
	@echo Stopping docker compose...
	docker-compose down
	@echo Done!

## build_broker: builds the broker binary as a linux executable
build_request_broker:
	@echo Building broker binary...
	chdir ..\..\erp-request-broker && set GOOS=linux&& set GOARCH=amd64&& set CGO_ENABLED=0 && go build -buildvcs=false -o ${REQUEST_BROKER_BINARY} ./cmd/api
	@echo Done!

## build_user_service: builds the user service binary as a linux executable
build_user_service:
	@echo Building user service binary...
	chdir ..\..\erp-user-service && set GOOS=linux&& set GOARCH=amd64&& set CGO_ENABLED=0 && go build -buildvcs=false -o ${USER_SERVICE_BINARY} ./cmd/api
	@echo Done!