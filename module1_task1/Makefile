Publish=hugo
build:	## The "build" target builds the Hugo site and generates the static HTML files into the output directory
	$(Publish)
clean:	## The "clean" target removes the output directory and all of its contents
	rm -rf dist/*
post:
	$(Publish) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md