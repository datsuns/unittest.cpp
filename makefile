.PHONY: default test auto_test setup

default: auto_test

test:
	cd ./_build && cmake .. && make

auto_test:
	ruby ./auto_test.rb

setup:
	mkdir _build
	mkdir -p lib
	git clone https://github.com/datsuns/googletest.git lib/googletest
	make -C lib/googletest
	gem install filewatcher
	gem install colorize


