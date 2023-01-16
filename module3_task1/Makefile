## Makefile for Go-Hugo website

build:## Build the website
	@hugo

clean: ## Clean up the build directory
	rm -rf dist/*

post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## usage: make help
	@echo "Usage:"
	cat Makefile | grep '##' | tr -d '##'