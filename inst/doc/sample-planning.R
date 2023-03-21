## ---- include = FALSE---------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
plan <- planning(materiality = 0.05, expected = 0, conf.level = 0.95)
summary(plan)

## -----------------------------------------------------------------------------
planning(min.precision = 0.02, expected = 0, conf.level = 0.95)

## -----------------------------------------------------------------------------
plan <- planning(materiality = 0.05, expected = 0, conf.level = 0.95, prior = TRUE)
summary(plan)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(plan)

## -----------------------------------------------------------------------------
prior <- auditPrior(method = "param", likelihood = "binomial", alpha = 1, beta = 10)
planning(materiality = 0.05, expected = 0, conf.level = 0.95, prior = prior)

