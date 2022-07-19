
.PHONY: transform clean setup install develop build

CD=cd delyrium

transform:
	$(CD) && npm run transform ../

clean:
	rm -r delyrium/src/sheets


setup:
	git submodule update --init
	git submodule foreach git checkout master

install: setup
	git submodule foreach git pull
	$(CD) && npm install

develop: install transform
	$(CD) && npm run develop

build: install transform
	$(CD) && npm run build
