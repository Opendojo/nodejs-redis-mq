
REPORTER ?= spec

test:
	test-unit test-bdd

test-unit:
	@./node_modules/.bin/mocha --ui tdd --reporter $(REPORTER) --growl

test-bdd:
	@./node_modules/.bin/mocha --ui bdd --reporter $(REPORTER) --growl

test-coffee: test-coffee-unit test-coffee-bdd

test-coffee-unit:
	@./node_modules/.bin/mocha --compilers coffee:coffee-script --ui tdd --reporter $(REPORTER) --growl testsrc/

test-coffee-bdd:
	@./node_modules/.bin/mocha --compilers coffee:coffee-script --ui bdd --reporter $(REPORTER) --growl testsrc/

clean:
	rm -rf lib/*.js
	rm -rf test/*.js

compile: clean
	cake build