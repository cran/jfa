## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, fig.height=4, fig.width=6)
library(jfa)

## -----------------------------------------------------------------------------
result_classical <- evaluation(materiality = 0.05, x = 1, n = 100)
summary(result_classical)

## -----------------------------------------------------------------------------
prior <- auditPrior(materiality = 0.05, method = "default", likelihood = "binomial")
result_bayesian <- evaluation(materiality = 0.05, x = 1, n = 100, prior = prior)
summary(result_bayesian)

## -----------------------------------------------------------------------------
prior <- auditPrior(materiality = 0.05, method = "impartial", likelihood = "binomial")
result_bayesian <- evaluation(materiality = 0.05, x = 1, n = 100, prior = prior)
summary(result_bayesian)

