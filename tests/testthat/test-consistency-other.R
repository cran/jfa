context("4. Test consistency of other functionality")

# jfa version 0.5.0

test_that(desc = "(id: f4-v0.5.0-t1) Function test .getfun()", {
  x <- jfa:::.getfun("rmarkdown::render")
  expect_equal(length(x), 1)
})