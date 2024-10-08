# Copyright (C) 2020-2023 Koen Derks

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

context("Validation of function planning")

# jfa version 0.1.0

test_that(desc = "(id: f5-v0.1.0-t1) Frequentist Poisson 1% materiality", {
  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "poisson")
  expect_equal(jfaRes[["n"]], 300)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t2) Frequentist Poisson 5% materiality", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0, likelihood = "poisson")
  expect_equal(jfaRes[["n"]], 60)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t3) Frequentist Poisson 5% materiality 2.5% errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "poisson")
  expect_equal(jfaRes[["n"]], 231)
  expect_equal(jfaRes[["x"]], 5.78, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t4) Frequentist Poisson 5% materiality 2% errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 2, likelihood = "poisson")
  expect_equal(jfaRes[["n"]], 126)
  expect_equal(jfaRes[["x"]], 2)
})

test_that(desc = "(id: f5-v0.1.0-t5) Bayesian Poisson 5% materiality 2.5% errors", {
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "poisson", prior = TRUE)
  expect_equal(jfaRes[["n"]], 228)
  expect_equal(jfaRes[["x"]], 5.7, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t7) Frequentist binomial 1% materiality", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "binomial")
  expect_equal(jfaRes[["n"]], 299)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t8) Frequentist binomial 5% materiality", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0, likelihood = "binomial")
  expect_equal(jfaRes[["n"]], 59)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t9) Frequentist binomial 5% materiality 2.5% errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "binomial")
  expect_equal(jfaRes[["n"]], 234)
  expect_equal(jfaRes[["x"]], 6, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t10) Frequentist binomial 5% materiality 2 errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 2, likelihood = "binomial")
  expect_equal(jfaRes[["n"]], 124)
  expect_equal(jfaRes[["x"]], 2)
})

test_that(desc = "(id: f5-v0.1.0-t11) Bayesian binomial 5% materiality 2.5% errors", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "default", likelihood = "binomial")
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "binomial", prior = prior)
  expect_equal(jfaRes[["n"]], 220)
  expect_equal(jfaRes[["x"]], 5.5, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t13) Frequentist hypergeometric 1% materiality", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "hypergeometric", N.units = 1000)
  expect_equal(jfaRes[["n"]], 258)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t14) Frequentist hypergeometric 5% materiality", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0, likelihood = "hypergeometric", N.units = 1000)
  expect_equal(jfaRes[["n"]], 57)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.1.0-t15) Frequentist hypergeometric 5% materiality 2.5% errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "hypergeometric", N.units = 1000)
  expect_equal(jfaRes[["n"]], 197)
  expect_equal(jfaRes[["x"]], 5)
})

test_that(desc = "(id: f5-v0.1.0-t16) Frequentist hypergeometric 5% materiality 2 errors", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 2, likelihood = "hypergeometric", N.units = 1000)
  expect_equal(jfaRes[["n"]], 119)
  expect_equal(jfaRes[["x"]], 2)
})

test_that(desc = "(id: f5-v0.1.0-t17) Bayesian hypergeometric 5% materiality 2.5% errors", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "default", likelihood = "hypergeometric", N.units = 1000)
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.025, likelihood = "hypergeometric", N.units = 1000, prior = prior)
  expect_equal(jfaRes[["n"]], 196)
  expect_equal(jfaRes[["x"]], 5)
})

test_that(desc = "(id: f5-v0.1.0-t19) Bayesian binomial 2% precision 5% materiality 2.5% errors impartial prior", {
  testthat::skip_on_cran()
  jfaPrior <- auditPrior(materiality = 0.05, conf.level = 0.95, method = "impartial", expected = 0.025, likelihood = "binomial")
  jfaRes <- planning(materiality = 0.05, min.precision = 0.02, conf.level = 0.95, expected = 0.025, likelihood = "binomial", N.units = 1000, prior = jfaPrior)
  expect_equal(jfaRes[["n"]], 284)
  expect_equal(jfaRes[["x"]], 7.1, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t20) Bayesian binomial 5% materiality 1% errors hypotheses prior", {
  testthat::skip_on_cran()
  jfaPrior <- auditPrior(materiality = 0.05, conf.level = 0.95, method = "hyp", p.hmin = 0.7, likelihood = "binomial")
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.01, likelihood = "binomial", N.units = 1000, prior = jfaPrior)
  expect_equal(jfaRes[["n"]], 55)
  expect_equal(jfaRes[["x"]], 0.55, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t21) Bayesian poisson 5% materiality 1% errors power prior", {
  testthat::skip_on_cran()
  jfaPrior <- auditPrior(materiality = 0.05, conf.level = 0.95, method = "power", delta = 0.6, n = 58, x = 0, expected = 0.025, likelihood = "binomial")
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0.01, likelihood = "binomial", N.units = 1000, prior = jfaPrior)
  expect_equal(jfaRes[["n"]], 38)
  expect_equal(jfaRes[["x"]], 0.38, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t22) Bayesian poisson 3% materiality 1.3% errors sample prior", {
  testthat::skip_on_cran()
  jfaPrior <- auditPrior(materiality = 0.03, conf.level = 0.95, method = "sample", n = 58, x = 0, expected = 0.025, likelihood = "binomial")
  jfaRes <- planning(materiality = 0.03, conf.level = 0.95, expected = 0.013, likelihood = "binomial", N.units = 1000, prior = jfaPrior)
  expect_equal(jfaRes[["n"]], 143)
  expect_equal(jfaRes[["x"]], 1.86, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.1.0-t23) Frequentist poisson 3% materiality 1.3% errors 5% min precision", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.03, conf.level = 0.95, expected = 0.013, min.precision = 0.05, likelihood = "binomial", N.units = 1000)
  expect_equal(jfaRes[["n"]], 303)
  expect_equal(jfaRes[["x"]], 4, tolerance = 0.001)
})

# jfa version 0.2.0

test_that(desc = "(id: f5-v0.2.0-t1) Bayesian poisson 3% materiality 1.3% errors 5% min precision standard prior", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "default", likelihood = "binomial")
  jfaRes <- planning(materiality = 0.03, conf.level = 0.95, expected = 0.013, min.precision = 0.05, likelihood = "binomial", N.units = 1000, prior = prior)
  expect_equal(jfaRes[["n"]], 293)
  expect_equal(jfaRes[["x"]], 3.81, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.2.0-t2) Bayesian poisson 100% materiality 0% errors 2% min precision standard prior", {
  testthat::skip_on_cran()
  jfaRes <- planning(conf.level = 0.95, min.precision = 0.02, likelihood = "poisson", prior = TRUE)
  expect_equal(jfaRes[["n"]], 149)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.2.0-t3) Bayesian poisson 100% materiality 1% errors 2% min precision standard prior", {
  testthat::skip_on_cran()
  jfaRes <- planning(conf.level = 0.95, min.precision = 0.02, expected = 0.01, likelihood = "poisson", prior = TRUE)
  expect_equal(jfaRes[["n"]], 219)
  expect_equal(jfaRes[["x"]], 2.19, tolerance = 0.001)
})

# jfa version 0.3.0 - 0.3.1
# No changes to be benchmarked

# jfa version 0.4.0

test_that(desc = "(id: f5-v0.4.0-t1) Expected Bayes factors for zero expected errors", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "strict", likelihood = "poisson")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0, likelihood = "poisson", prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$odds.h1, 19.08554, tolerance = 0.001)

  prior <- auditPrior(method = "default", likelihood = "binomial")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0, likelihood = "binomial", prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 945.2848, tolerance = 0.001)

  prior <- auditPrior(method = "default", likelihood = "hypergeometric", N.units = 1000)
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0, likelihood = "hypergeometric", prior = prior, N.units = 1000)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 933.7705249, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.4.0-t2) Expected Bayes factors for expected errors > 0", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "strict", likelihood = "poisson")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0.01, likelihood = "poisson", prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$odds.h1, 19.01191777, tolerance = 0.001)

  prior <- auditPrior(method = "default", likelihood = "binomial")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0.01, likelihood = "binomial", prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 933.3458, tolerance = 0.001)

  prior <- auditPrior(method = "default", likelihood = "hypergeometric", N.units = 1000)
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, expected = 0.01, likelihood = "hypergeometric", prior = prior, N.units = 1000)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 939.0618203, tolerance = 0.001)
})

test_that(desc = "(id: f5-v0.4.0-t3) Expected Bayes factors for impartial priors", {
  testthat::skip_on_cran()
  prior <- auditPrior(materiality = 0.02, conf.level = 0.95, method = "impartial", likelihood = "poisson")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 19.35135, tolerance = 0.001)

  prior <- auditPrior(materiality = 0.02, conf.level = 0.95, method = "impartial", likelihood = "binomial")
  jfaRes <- planning(conf.level = 0.95, materiality = 0.02, prior = prior)
  expect_equal(jfaRes[["posterior"]][["hypotheses"]]$bf.h1, 19.01047, tolerance = 0.001)
})

# jfa version 0.5.0

test_that(desc = "(id: f5-v0.5.0-t1) Test for frequentist summary and print function", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "poisson")
  invisible(capture.output(print(jfaRes)))
  invisible(capture.output(summary(jfaRes)))
  expect_equal(jfaRes[["n"]], 300)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.5.0-t2) Test for Bayesian summary and print function", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "poisson", prior = TRUE)
  invisible(capture.output(print(jfaRes)))
  invisible(capture.output(summary(jfaRes)))
  invisible(capture.output(print(jfaRes[["posterior"]])))
  invisible(capture.output(summary(jfaRes[["posterior"]])))
  expect_equal(jfaRes[["n"]], 299)
  expect_equal(jfaRes[["x"]], 0)
})

test_that(desc = "(id: f5-v0.5.0-t4) Test for Bayesian plot function", {
  testthat::skip_on_cran()
  jfaRes <- planning(min.precision = 0.02, conf.level = 0.95, expected = 0, likelihood = "poisson", prior = TRUE)
  p <- plot(jfaRes)
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["prior"]])
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["posterior"]])
  expect_equal(is.null(p), FALSE)

  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "binomial", prior = TRUE)
  p <- plot(jfaRes)
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["prior"]])
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["posterior"]])
  expect_equal(is.null(p), FALSE)

  jfaRes <- planning(materiality = 0.01, conf.level = 0.95, expected = 0, likelihood = "hypergeometric", prior = TRUE, N.units = 1000)
  p <- plot(jfaRes)
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["prior"]])
  expect_equal(is.null(p), FALSE)
  p <- plot(jfaRes[["posterior"]])
  expect_equal(is.null(p), FALSE)
})

# jfa version 0.5.1
# No changes to be benchmarked

# jfa version 0.5.2

test_that(desc = "(id: f5-v0.5.2-t1) Test for change in Hypergeometric mode calculation", {
  testthat::skip_on_cran()
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0, likelihood = "hypergeometric", N.units = 10000)
  modeDist <- ceiling((jfaRes[["ub"]] - jfaRes[["precision"]]) * 10000)
  expect_equal(jfaRes[["n"]], 59)
  expect_equal(modeDist, 0)
})

test_that(desc = "(id: f5-v0.5.2-t2) Test for change in beta-binomial mode calculation", {
  testthat::skip_on_cran()
  prior <- auditPrior(method = "default", likelihood = "hypergeometric", N.units = 10000)
  jfaRes <- planning(materiality = 0.05, conf.level = 0.95, expected = 0, likelihood = "hypergeometric", N = 10000, prior = prior)
  modeDist <- ceiling((jfaRes[["ub"]] - jfaRes[["precision"]]) * 10000)
  expect_equal(jfaRes[["n"]], 58)
  expect_equal(modeDist, 0)
})

# jfa version 0.5.3 - 0.6.4
# No changes to be benchmarked

# jfa version 0.6.5

test_that(desc = "(id: f5-v0.6.5-t1) Test Bayesian planning with different uniform priors, 5% materiality", {
  testthat::skip_on_cran()
  set.seed(1)
  prior1 <- auditPrior(method = "default", likelihood = "binomial")
  prior2 <- auditPrior(method = "param", likelihood = "uniform", alpha = 0, beta = 1)
  prior3 <- auditPrior(method = "nonparam", samples = seq(0, 1, length.out = 10001))
  prior4 <- auditPrior(method = "nonparam", samples = runif(1000000, 0, 1))
  prior5 <- auditPrior(method = "nonparam", samples = rbeta(1000000, 1, 1))
  priors <- list(prior1, prior2, prior3, prior4, prior5)
  for (i in 1:5) {
    res <- planning(materiality = 0.05, prior = priors[[i]], likelihood = "binomial")
    expect_equal(res[["n"]], 58)
  }
})

# jfa version 0.7.1

test_that(desc = "(id: f5-v0.7.1-t1) Test frequentist two-stage planning", {
  testthat::skip_on_cran()
  n <- planning(materiality = 0.03, expected = c(1, 0), likelihood = "poisson")$n_staged
  expect_equal(n, 105)
  n <- planning(materiality = 0.05, expected = c(1, 0), likelihood = "binomial")$n_staged
  expect_equal(n, 61)
})
