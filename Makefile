build:
	jekyll build
	gzip -rk9 _site
	tar zcf bunker.org.ua.tar.gz -C _site/ .

deploy:
	scp bunker.org.ua.tar.gz shelter:
	ssh shelter "tar zxf bunker.org.ua.tar.gz -C /var/www/bunker.org.ua"

.PHONY: build deploy
