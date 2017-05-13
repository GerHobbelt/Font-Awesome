PATH := ./node_modules/.bin:$(PATH)

FA_ROOT_DIRECTORY = .
FA_LESS_DIRECTORY = ${FA_ROOT_DIRECTORY}/less
FA_SCSS_DIRECTORY = ${FA_ROOT_DIRECTORY}/scss
FA_CSS_DIRECTORY = ${FA_ROOT_DIRECTORY}/css

FA_LESS_MODERN = ${FA_LESS_DIRECTORY}/font-awesome.less
FA_SCSS_MODERN = ${FA_SCSS_DIRECTORY}/font-awesome.scss
#FA_LESS_IE7 = ${FA_LESS_DIRECTORY}/font-awesome-ie7.less

FA_CSS_MODERN = ${FA_CSS_DIRECTORY}/font-awesome.css
#FA_CSS_MODERN_MIN = ${FA_CSS_DIRECTORY}/font-awesome.min.css
#FA_CSS_IE7 = ${FA_CSS_DIRECTORY}/font-awesome-ie7.css
#FA_CSS_IE7_MIN = ${FA_CSS_DIRECTORY}/font-awesome-ie7.min.css

#SITE_LESS_DIRECTORY = assets/less
#SITE_CSS_DIRECTORY = assets/css

#SITE_LESS = ${SITE_LESS_DIRECTORY}/site.less
#SITE_CSS_MIN = ${SITE_CSS_DIRECTORY}/site.css

LESSC = lessc



.PHONY: all css site install



all: site


site:
	jekyll build
	@echo "now cd into _gh_pages and git commit the regenerated content..."


css:
	@echo "Compiling Less files"
	@mkdir -p ${FA_CSS_DIRECTORY}
	$(LESSC) ${FA_LESS_MODERN} > ${FA_CSS_MODERN}
	#$(LESSC) --compress ${FA_LESS_MODERN} > ${FA_CSS_MODERN_MIN}
	#$(LESSC) ${FA_LESS_IE7} > ${FA_CSS_IE7}
	#$(LESSC) --compress ${FA_LESS_IE7} > ${FA_CSS_IE7_MIN}
	#$(LESSC) --compress ${SITE_LESS} > ${SITE_CSS_MIN}
	#
	# cp -r ${FA_ROOT_DIRECTORY}/* ../
	# mv README.md-nobuild ../README.md
	# cd assets && mv font-awesome font-awesome-4.7.0 && zip -r9 font-awesome-4.7.0.zip font-awesome-4.7.0 && mv font-awesome-4.7.0 font-awesome
	#
	# find .. -type f ! -perm 644 -exec chmod 644 {} \;




#
# the `install` target will ensure all required packages are installed:
# jekyll + lessc
#

install:
	bundle install
	npm install


