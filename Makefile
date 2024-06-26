doc:  # runs the documentation tests
	${CURDIR}/node_modules/.bin/text-run --format=dot

fix:  # auto-corrects all formatting issues
	${CURDIR}/node_modules/.bin/eslint . --fix --ext .ts
	${CURDIR}/node_modules/.bin/prettier --write .

help:   # shows all available Make commands
	cat Makefile | grep '^[^ ]*:' | grep -v '.PHONY' | grep -v '.SILENT' | grep -v help | sed 's/:.*#/#/' | column -s "#" -t

lint:  # runs all linters
	${CURDIR}/node_modules/.bin/eslint . --ext .ts
	${CURDIR}/node_modules/.bin/prettier -l .

package:  # package the extension for local installation
	vsce package

publish-patch:  # publishes a new patch version
	vsce publish patch --no-yarn

publish-minor:  # publishes a new minor version
	vsce publish minor --no-yarn

publish-major:  # publishes a new major version
	vsce publish major --no-yarn

setup:  # prepare this code base for development
	yarn install

test:  # runs all the tests
	${CURDIR}/node_modules/.bin/tsc -p .
	make --no-print-directory lint
	make --no-print-directory doc

update:  # updates all dependencies
	yarn upgrade --latest

.DEFAULT_GOAL := help
.SILENT:
