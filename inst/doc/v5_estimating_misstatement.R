## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, fig.height=4, fig.width=6)
library(jfa)

## -----------------------------------------------------------------------------
result_classical <- evaluation(min.precision = 0.02, method = "poisson", n = 188, x = 1)

## -----------------------------------------------------------------------------
summary(result_classical)

## -----------------------------------------------------------------------------
prior <- auditPrior(method = "default", likelihood = "poisson")

## -----------------------------------------------------------------------------
result_bayesian <- evaluation(min.precision = 0.02, n = 188, x = 1, prior = prior)
summary(result_bayesian)

