build:
	jekyll build
	gzip -rk9 _site
	tar zcf bunker.org.ua.tar.gz -C _site/ .

.PHONY: build
