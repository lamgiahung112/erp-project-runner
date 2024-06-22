SHELL=bash
USER_SERVICE_BINARY=userServiceApp
LOGGER_SERVICE_BINARY=loggerServiceApp
MAILER_SERVICE_BINARY=mailerServiceApp

## up: starts containers without forcing build
up:
	@echo Starting docker images
	docker-compose up -d
	@echo Docker images started

## up_build: forces build then starts containers
up_build: build_user_service build_logger_service build_mailer_service
	@echo Stopping images
	docker compose down
	@echo Building images and starting...
	docker compose up --build -d
	@echo Docker images built and started!

## down: stop docker compose
down:
	@echo Stopping docker compose...
	docker compose down
	@echo Done!

## build_user_service: builds the user service binary as a linux executable
build_user_service:
	@echo Building user service binary...
	cd ../../erp-user-service && env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ${USER_SERVICE_BINARY} ./cmd/api
	@echo Done!

build_logger_service:
	@echo Building logger service binary...
	cd ../../erp-logger-service && env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ${LOGGER_SERVICE_BINARY} ./
	@echo Done!

build_mailer_service:
	@echo Building mailer service binary...
	cd ../../erp-mailer && env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ${MAILER_SERVICE_BINARY} ./
	@echo Done!