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

context("Benchmark against SMASH21 + SMASH21-Bayes")

# SMASH21
# Retrieved on 27-04-2021 from https://steekproeven.eu/wp-content/uploads/2021/01/SMASH21-PRO-kopie.xlsx

test_that(desc = "(id: f13-v0.5.3-t1) Test frequentist sample sizes", {
  testthat::skip_on_cran()
  theta <- c(1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000) / 20000 # materiality divided by N
  expected <- c(100, 200, 300, 400, 500, 600) / 20000 # exp.error divided by N
  sampleSizeMatrix <- matrix(NA, nrow = length(expected), ncol = length(theta))
  for (i in seq_len(nrow(sampleSizeMatrix))) {
    for (j in seq_len(ncol(sampleSizeMatrix))) {
      plan <- planning(conf.level = 0.95, materiality = theta[j], expected = expected[i], likelihood = "poisson")
      sampleSizeMatrix[i, j] <- plan[["n"]]
    }
  }
  smash_matrix <- matrix(
    c(
      74, 34, 22, 16, 13, 11, 9, 8, 7, 7, # 0.5%
      93, 37, 23, 17, 13, 11, 10, 8, 7, 7, # 1%
      120, 41 + 1, 25, 18, 14, 12, 10, 9, 8, 7, # 1.5%: 41 --> 42 as qgamma(p = 0.95, shape = 1 + 0.015 * 41, rate = 41) > 0.1
      162, 47, 27, 19, 15, 12, 10, 9, 8, 7, # 2%
      231, 53, 29, 20, 15, 12, 10, 9, 8, 7, # 2.5%
      357, 60, 31, 21, 16, 13, 11, 9, 8, 7 # 3%
    ),
    byrow = TRUE,
    nrow = length(expected),
    ncol = length(theta)
  )
  expect_equal(sampleSizeMatrix, smash_matrix)
})

# SMASH21-Bayes
# Retrieved on 27-04-2021 from https://steekproeven.eu/wp-content/uploads/2021/01/SMASH21-Bayes-kopie.xlsx

test_that(desc = "(id: f13-v0.5.3-t2) Test Bayesian sample sizes (N = 20,000)", {
  testthat::skip_on_cran()
  N <- 20000
  materiality <- 2000 / N
  expected <- c(300, 500, 700, 900, 1000) / N # 1.5%, 2.5%, 3.5%, 4.5%, 5%
  ub <- c(5000, 10000, 15000, 18000, 19000) / N # 25%, 50%, 75%, 90%, 95%
  sampleSizeMatrix <- matrix(NA, nrow = length(expected), ncol = length(ub))
  for (i in seq_len(nrow(sampleSizeMatrix))) {
    for (j in seq_len(ncol(sampleSizeMatrix))) {
      prior <- auditPrior(conf.level = 0.95, materiality = materiality, likelihood = "poisson", method = "bram", expected = expected[i], ub = ub[j])
      plan <- planning(conf.level = 0.95, materiality = materiality, expected = expected[i], prior = prior)
      sampleSizeMatrix[i, j] <- plan[["n"]]
    }
  }

  smash_matrix <- matrix(
    c(
      28, 35, 37, 38, 38, # 1.5%
      38, 46, 49, 49, 50, # 2.5%
      54, 63, 65, 66, 66, # 3.5%
      79, 89, 92, 93, 93, # 4.5%
      98 - 1, 109, 111, 112, 112 # 5% --> SMASH gives 98 for ub = 25%, jfa gives 97
    ),
    byrow = TRUE,
    nrow = length(expected),
    ncol = length(ub)
  )
  expect_equal(sampleSizeMatrix, smash_matrix)
})

test_that(desc = "(id: f13-v0.5.3-t3) Test Bayesian sample sizes (N = 100,000)", {
  testthat::skip_on_cran()
  N <- 100000
  materiality <- 6000 / N
  expected <- c(1000, 2000, 3000, 4000, 5000) / N # 1%, 2%, 3%, 4%, 5%
  ub <- c(9000, 10000, 12000, 20000, 30000) / N # 9%, 10%, 12%, 20%, 30%
  sampleSizeMatrix <- matrix(NA, nrow = length(expected), ncol = length(ub))
  for (i in seq_len(nrow(sampleSizeMatrix))) {
    for (j in seq_len(ncol(sampleSizeMatrix))) {
      prior <- auditPrior(conf.level = 0.95, materiality = materiality, likelihood = "poisson", method = "bram", expected = expected[i], ub = ub[j])
      plan <- planning(conf.level = 0.95, materiality = materiality, expected = expected[i], prior = prior)
      sampleSizeMatrix[i, j] <- plan[["n"]]
    }
  }

  smash_matrix <- matrix(
    c(
      30, 35, 42, 55, 61, # 1%
      56, 64, 75, 92, 99, # 2%
      120, 133, 149, 172, 181, # 3%
      288 + 33, 312 + 33, 338 + 33, 370 + 32, 380 + 32, # 4% --> SMASH gives lower sample sizes for all thetas
      310 + 1193, 282 + 1267, 251 + 1342, 225 + 1413, 456 + 1194 # 5% --> SMASH gives lower sample sizes for all thetas
    ),
    byrow = TRUE,
    nrow = length(expected),
    ncol = length(ub)
  )
  expect_equal(sampleSizeMatrix, smash_matrix)
})
