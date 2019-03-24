JEKYLL_VERSION=3.8

# Creates a new Jekyll site in current directory. Only run once.
init:
	docker run \
		--rm -it \
		-v $(PWD):/srv/jekyll \
		jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll new --force .

# Builds a local version of the site.
build:
	docker run \
		--rm -it \
		-v $(PWD):/srv/jekyll \
		jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll build

# Serves the site on port 4000.
serve:
	docker run \
		--rm -it \
		-v $(PWD):/srv/jekyll \
		-p 4000:4000 \
		jekyll/jekyll:$(JEKYLL_VERSION) \
		jekyll serve --drafts