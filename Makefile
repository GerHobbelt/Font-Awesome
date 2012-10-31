build: components css/font-awesome.css font/fontawesome-webfont.eot font/fontawesome-webfont.svg font/fontawesome-webfont.ttf font/fontawesome-webfont.woff
	@component build --dev

release: replace
	@component build
	
replace:
	@cat ./css/font-awesome.css | sed -e 's/\.\.\/font\//components\/timoxley-font-awesome\/font\//g' > ./release/font-awesome.css

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js release

.PHONY: clean release
