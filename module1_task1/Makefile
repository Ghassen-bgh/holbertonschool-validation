build:	## The "build" target builds the Hugo site and generates the static HTML files into the output directory
	hugo  --buildDrafts
clean:	## The "clean" target removes the output directory and all of its contents
	rm -rf dist
post:	## The "post" target creates a new blog post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
