.PHONY: default test auto_test setup

default: auto_test

test:

auto_test:

setup:
	mkdir -p lib
	git clone https://github.com/datsuns/googletest.git lib/googletest
	make -C lib/googletest


