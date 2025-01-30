#include <gtest/gtest.h>

#include "demo.hpp"

TEST(DemoTest, SumTest) {
  demo d;
  EXPECT_EQ(d.sum(2, 3), 5);
  EXPECT_EQ(d.sum(-1, 1), 0);
  EXPECT_EQ(d.sum(-2, -3), -5);
  EXPECT_EQ(d.sum(0, 0), 0);
}