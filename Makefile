REPORTER = list
MOCHA_OPTIONS = --ui tdd

test:
	clear
	echo STARTING TESTS ********************
	./node_modules/mocha/bin/mocha --reporter $(REPORTER) $(MOCHA_OPTIONS) test/unit/fiware-comet_test.js
	echo TESTS ENDED ***********************

test-watch:
	clear
	echo STARTING TESTS ********************
	./node_modules/mocha/bin/mocha --reporter $(REPORTER) --growl --watch $(MOCHA_OPTIONS) test/unit/fiware-comet_test.js

.PHONY: test test-database test-watch
