## ---- include = FALSE---------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
evaluation(materiality = 0.05, x = 1, n = 100)

## -----------------------------------------------------------------------------
prior <- auditPrior(materiality = 0.05, method = "default", likelihood = "binomial")
evaluation(materiality = 0.05, x = 1, n = 100, prior = prior)

## -----------------------------------------------------------------------------
prior <- auditPrior(materiality = 0.05, method = "impartial", likelihood = "binomial")
evaluation(materiality = 0.05, x = 1, n = 100, prior = prior)

## -----------------------------------------------------------------------------
data(retailer)
print(retailer)

## -----------------------------------------------------------------------------
set.seed(1) # Important because the posterior distribution is determined via sampling
result_np <- evaluation(
  materiality = 0.05, method = "binomial", prior = TRUE,
  n = retailer$samples, x = retailer$errors, N.units = retailer$items,
  alternative = "two.sided", pooling = "none"
)
summary(result_np)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_np, type = "estimates")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_np, type = "posterior")

## -----------------------------------------------------------------------------
result_cp <- evaluation(
  materiality = 0.05, method = "binomial", prior = TRUE,
  n = retailer$samples, x = retailer$errors, N.units = retailer$items,
  alternative = "two.sided", pooling = "complete"
)
summary(result_cp)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_cp, type = "estimates")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_cp, type = "posterior")

## -----------------------------------------------------------------------------
set.seed(1) # Important because the posterior distribution is determined via sampling
result_pp <- evaluation(
  materiality = 0.05, method = "binomial", prior = TRUE,
  n = retailer$samples, x = retailer$errors, N.units = retailer$items,
  alternative = "two.sided", pooling = "partial"
)
summary(result_pp)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_pp, type = "estimates")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(result_pp, type = "posterior")

## -----------------------------------------------------------------------------
data(allowances)
head(allowances)

## -----------------------------------------------------------------------------
x <- evaluation(
  materiality = 0.05, data = allowances,
  values = "bookValue", values.audit = "auditValue", times = "times"
)
summary(x)

## -----------------------------------------------------------------------------
x <- evaluation(
  materiality = 0.05, data = allowances, prior = TRUE,
  values = "bookValue", values.audit = "auditValue", times = "times"
)
summary(x)

## -----------------------------------------------------------------------------
N.units <- aggregate(allowances$bookValue, list(allowances$branch), sum)$x

## -----------------------------------------------------------------------------
x <- evaluation(
  materiality = 0.05, data = allowances,
  values = "bookValue", values.audit = "auditValue", strata = "branch", times = "times",
  alternative = "two.sided", N.units = N.units
)
summary(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "estimates")

## -----------------------------------------------------------------------------
x <- evaluation(
  materiality = 0.05, data = allowances, prior = TRUE,
  values = "bookValue", values.audit = "auditValue", strata = "branch", times = "times",
  alternative = "two.sided", N.units = N.units
)
summary(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "estimates")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "posterior")

