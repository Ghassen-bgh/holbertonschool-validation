build:	## The "build" target builds the Hugo site and generates the static HTML files into the output directory
	hugo  --buildDrafts
clean:	## The "clean" target removes the output directory and all of its contents
	rm -rf dist
post:	## The "post" target creates a new blog post
	if [ -z "$(POST_NAME)" ]; then \
		POST_NAME=$(shell uuidgen | sed 's/-//g'); \
	fi
	if [ -z "$(POST_TITLE)" ]; then \
		POST_TITLE=$(shell uuidgen | sed 's/-//g'); \
	fi
	hugo new posts/$(POST_NAME).md
	sed -i '/title/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md
help:	## The "help" target prints a list of available targets and their usage
	@echo "Available targets:"
	@echo "  build      Build the Hugo site"
	@echo "  clean      Clean the build directory"
	@echo "  post       Create a new blog post"
	@echo "  help       Print this help message"