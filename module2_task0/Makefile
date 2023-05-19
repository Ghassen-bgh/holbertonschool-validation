.PHONY: build run stop clean test help

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log

build: ## Build the application
	go build -o $(BINARY_NAME)

run: ## Run the application
	nohup ./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ## Stop the application
	kill "$(shell pgrep $(BINARY_NAME))"

clean: stop ## Stop the application and delete binary and log file
	rm -f $(BINARY_NAME) $(LOG_FILE)

test: ## Test the application by making requests
	curl http://localhost:9999 || true
	curl http://localhost:9999/health

help: ## Print this help message
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
