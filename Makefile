
.PHONY: clean transform build develop install setup

CD=cd delyrium

setup:
	git submodule update --init

install: setup
	git submodule foreach git pull
	$(CD) && npm install

transform:
	$(CD) && npm run transform ../

develop: install transform
	$(CD) && npm run develop

build: install transform
	$(CD) && npm run build

clean:
	rm -r delyrium/src/sheets
