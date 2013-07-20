
.PHONY: all site install



all: site


site:
	jekyll build
	@echo "now cd into _gh_pages and git commit the regenerated content..."


#
# the `install` target will ensure all required packages are installed:
# jekyll + lessc
#

install:
	bundle install
	npm install


