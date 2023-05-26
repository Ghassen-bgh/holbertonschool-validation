build: lint ## Build the website
	@make lint
	@hugo

clean: ## Clean up the build directory
	rm -rf dist/*

post: ## Create a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Show available targets
	@echo "Usage:"
	@awk -F ':|##' '/^[^\t].+?:.*?##/ { printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF }' $(MAKEFILE_LIST)

package: ## Package the website
	zip -r awesome-website.zip awesome-api dist/

lint: ## Run linting
	@echo "Running lint..."
	@hugo --quiet
	@echo "Linting complete!"