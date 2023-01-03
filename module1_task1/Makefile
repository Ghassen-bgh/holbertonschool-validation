build:
	hugo  --buildDrafts
clean:
	rm -rf dist
post:
	if [ -z "$(POST_NAME)" ]; then \
		POST_NAME=$(shell uuidgen | sed 's/-//g'); \
	fi
	if [ -z "$(POST_TITLE)" ]; then \
		POST_TITLE=$(shell uuidgen | sed 's/-//g'); \
	fi
	hugo new posts/$(POST_NAME).md
	sed -i '/title/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md