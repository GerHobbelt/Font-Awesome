build: components css/font-awesome.css font/fontawesome-webfont.eot font/fontawesome-webfont.svg font/fontawesome-webfont.ttf font/fontawesome-webfont.woff
	@component build --dev

release:
	@mkdir -p release
	@component build --out release --name font-awesome
	@sed -i "" 's/\.\.\/font//g' ./release/font-awesome.css

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js release

.PHONY: clean release
