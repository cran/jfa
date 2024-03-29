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

context("Validation of workflow functionality")

# jfa version 0.1.0

test_that(desc = "(id: f8-v0.1.0-t1) Test for workflow elements", {
  testthat::skip_on_cran()
  set.seed(1)
  # Generate some audit data (N = 1000).
  population <- data.frame(ID = sample(1000:100000, size = 1000, replace = FALSE), bookValue = runif(n = 1000, min = 100, max = 500))
  # Specify materiality, conf.level, and expected errors.
  materiality <- 0.05
  conf.level <- 0.95
  expected <- 0.025
  # Create a prior on the assessments of inherent risk (100%) and control risk (60%).
  ir <- 1
  cr <- 0.6
  # Create a beta prior distribution according to the Audit Risk Model (arm).
  prior <- auditPrior(materiality = materiality, conf.level = conf.level, method = "arm", ir = ir, cr = cr, expected = expected, likelihood = "binomial")
  # Calculate the sample size according to the binomial distribution with the specified prior
  sampleSize <- planning(materiality = materiality, conf.level = conf.level, expected = expected, prior = prior, likelihood = "binomial")
  # Draw sample using random record sampling
  set.seed(1)
  sampleResult <- selection(data = population, size = sampleSize, method = "random", units = "items")
  sample <- sampleResult$sample
  sample$trueValue <- sample$bookValue
  sample$trueValue[2] <- sample$trueValue[2] - 0.5 * sample$trueValue[2] # One overstatement is found
  # Evaluate the sample using the posterior distribution.
  conclusion <- evaluation(conf.level = conf.level, data = sample, values = "bookValue", values.audit = "trueValue", prior = prior, materiality = 0.05)
  expect_equal(conclusion[["ub"]], 0.02669982, tolerance = 0.001)
})

test_that(desc = "(id: f8-v0.1.0-t1) Test for use of jfaPrior and jfaPosterior", {
  testthat::skip_on_cran()
  conf.level <- 0.90 # 90% conf.level
  tolerance <- 0.05 # 5% tolerance (materiality)
  # Construct a prior distribution
  prior <- auditPrior(conf.level = conf.level, materiality = tolerance, method = "impartial", likelihood = "binomial")
  # Use the prior distribution for planning
  plan <- planning(conf.level = conf.level, materiality = tolerance, expected = 0, prior = prior)
  # Use the prior distribution for evaluation
  result <- evaluation(conf.level = conf.level, materiality = tolerance, n = plan$n, x = plan$x, prior = prior)
  # Extract the posterior distribution
  posterior <- result$posterior
  # Use the posterior distribution for planning
  plan2 <- planning(conf.level = conf.level, materiality = tolerance, expected = 0, prior = result$posterior)
  # Use the posterior distribution for evaluation
  result2 <- evaluation(conf.level = conf.level, materiality = tolerance, n = plan2$n, x = plan2$x, prior = result$posterior)
  expect_equal(result2[["ub"]], 0.04829835) # Upper bound of 4.8%
})

test_that(desc = "(id: f8-v0.6.5-t1) Test for use of pipe in planning-selection", {
  testthat::skip_on_cran()
  res <- planning(materiality = 0.03) |> selection(data = BuildIt)
  expect_equal(nrow(res[["sample"]]), 100)
})
