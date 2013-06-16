build: components css/font-awesome.css font/fontawesome-webfont.eot font/fontawesome-webfont.svg font/fontawesome-webfont.ttf font/fontawesome-webfont.woff
	component build

components: component.json
	component install

clean:
	rm -fr build components template.js

.PHONY: clean release
