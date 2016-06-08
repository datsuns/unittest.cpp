#include <gmock/gmock.h>
#include "product.h"

using testing::Eq;
using testing::Ne;
using testing::NotNull;

class TestProduct : public testing::Test{
  protected:
    virtual void SetUp() {
    }

    virtual void TearDown() {
    }
};

TEST_F(TestProduct, hello) {
  EXPECT_THAT(0, Eq(1));
}

