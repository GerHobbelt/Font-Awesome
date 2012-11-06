build: components css/font-awesome.css font/fontawesome-webfont.eot font/fontawesome-webfont.svg font/fontawesome-webfont.ttf font/fontawesome-webfont.woff
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean release
