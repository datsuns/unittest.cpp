.PHONY: default test auto_test setup

default: auto_test

test:
	cd ./_build && cmake .. && make

auto_test:
	ruby ./auto_test.rb

setup:
	mkdir -p _build
	mkdir -p test/lib
	git clone https://github.com/google/googletest.git test/lib/googletest
	mkdir -p test/lib/googletest/_build
	cd test/lib/googletest/_build ; cmake .. ; make
	gem install filewatcher
	gem install colorize

