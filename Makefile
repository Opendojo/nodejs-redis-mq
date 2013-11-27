
REPORTER ?= spec

test: test-unit test-bdd

.PHONY: test

test-unit:
	@./node_modules/.bin/mocha --ui tdd --reporter $(REPORTER) --growl test/tdd/*

test-bdd:
	@./node_modules/.bin/mocha --ui bdd --reporter $(REPORTER) --growl test/bdd/*

watch-test-unit:
	@./node_modules/.bin/mocha -w --ui tdd --reporter $(REPORTER) --growl test/tdd/*

test-coffee: test-coffee-unit test-coffee-bdd

test-coffee-unit:
	@./node_modules/.bin/mocha --compilers coffee:coffee-script --ui tdd --reporter $(REPORTER) --growl testsrc/tdd/*

test-coffee-bdd:
	@./node_modules/.bin/mocha --compilers coffee:coffee-script --ui bdd --reporter $(REPORTER) --growl testsrc/bdd/*

clean:
	rm -rf lib/*.js
	rm -rf test/*.js

compile: clean
	cake build