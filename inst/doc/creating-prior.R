## ----setup, include = FALSE---------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
prior <- auditPrior(method = "default", likelihood = "binomial")
summary(prior)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(prior)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
predict(prior, n = 6)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(predict(prior, n = 10))

## -----------------------------------------------------------------------------
auditPrior(method = "param", likelihood = "binomial", alpha = 2, beta = 10)
auditPrior(method = "param", likelihood = "normal", alpha = 0.025, beta = 0.05)
auditPrior(method = "param", likelihood = "t", alpha = 0.01)

## -----------------------------------------------------------------------------
auditPrior(method = "strict", likelihood = "binomial")

## -----------------------------------------------------------------------------
auditPrior(method = "impartial", likelihood = "binomial", materiality = 0.05)

## -----------------------------------------------------------------------------
auditPrior(method = "hyp", likelihood = "binomial", materiality = 0.05, p.hmin = 0.6)

## -----------------------------------------------------------------------------
auditPrior(method = "arm", likelihood = "binomial", materiality = 0.05, ir = 0.9, cr = 0.6)

## -----------------------------------------------------------------------------
auditPrior(method = "bram", likelihood = "binomial", expected = 0.01, materiality = 0.05, ub = 0.6)

## -----------------------------------------------------------------------------
auditPrior(method = "sample", likelihood = "binomial", x = 0, n = 30)

## -----------------------------------------------------------------------------
auditPrior(method = "factor", likelihood = "binomial", x = 0, n = 58, factor = 0.7)

## -----------------------------------------------------------------------------
auditPrior(method = "nonparam", samples = stats::rbeta(1000, 1, 10))

## -----------------------------------------------------------------------------
prior <- auditPrior(method = "param", likelihood = "binomial", alpha = 1, beta = 10)
planning(materiality = 0.05, likelihood = "binomial", prior = prior)

## -----------------------------------------------------------------------------
prior <- auditPrior(method = "param", likelihood = "normal", alpha = 0.025, beta = 0.05)
eval <- evaluation(materiality = 0.05, x = 1, n = 60, prior = prior)
summary(eval)
plot(eval)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(predict(eval$posterior, n = 10))

