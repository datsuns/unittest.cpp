.PHONY: default test

TARGET      = $(shell basename `pwd`)
PRODUCT     = ../product
PRODUCT_SRC = $(shell find $(PRODUCT) | grep cpp$)
PRODUCT_OBJ = $(PRODUCT_SRC:.cpp=.o)
TEST_SRC    = $(shell find . | grep cpp$)
TEST_OBJ    = $(TEST_SRC:.cpp=.o)

CPPFLAGS    += -I ../lib/googletest/googlemock/include/

default: $(TARGET) test

$(TARGET): $(PRODUCT_OBJ) $(TEST_OBJ)

test:
	echo $(PRODUCT_OBJ)
	echo $(TEST_OBJ)

