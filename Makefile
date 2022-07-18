
.PHONY: clean transform build develop install

CD=cd delyrium

install:
	$(CD) && npm install

transform:
	$(CD) && npm run transform ../

develop: install
	$(CD) && npm run develop

build: install
	$(CD) && npm run build

clean:
	rm -r delyrium/src/sheets
