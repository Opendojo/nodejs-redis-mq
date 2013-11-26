
REPORTER ?= list

test: test-unit

test-unit:
	@./node_modules/.bin/mocha --reporter $(REPORTER) --growl


clean:
	rm -rf lib/*.js
	rm -rf test/*.js

compile: clean
	cake build