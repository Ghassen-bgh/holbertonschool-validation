.PHONY: build run stop clean test help

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log

build:
	go build -o $(BINARY_NAME)

run:
	nohup ./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop:
	kill "$(shell pgrep $(BINARY_NAME))"

clean: stop
	rm -f $(BINARY_NAME) $(LOG_FILE)

test:
	curl http://localhost:9999 || true
	curl http://localhost:9999/health

help:
	@echo "build:    Compile the source code of the application"
	@echo "run:      Run the application in the background"
	@echo "stop:     Stop the running application"
	@echo "clean:    Stop the application and delete binary and log file"
	@echo "test:     Test the application by making requests"
	@echo "help:     Print this help message"
