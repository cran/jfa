## ----include = FALSE----------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
# Default beta(1, 1) prior distribution
x <- auditPrior(method = "default", likelihood = "binomial")

# Custom gamma(1, 10) prior distribution
x <- auditPrior(method = "param", likelihood = "poisson", alpha = 1, beta = 10)

# Beta prior distribution incorporating inherent risk (70%) and control risk (50%)
x <- auditPrior(method = "arm", likelihood = "binomial", materiality = 0.05, ir = 0.7, cr = 0.5)

summary(x) # Prints information about the prior distribution
predict(x, n = 20, cumulative = TRUE) # Predictions for a sample of n = 20

## -----------------------------------------------------------------------------
# Classical planning using the Poisson likelihood
x <- planning(materiality = 0.03, likelihood = "poisson")

# Bayesian planning using a default beta(1, 1) prior and binomial likelihood
x <- planning(materiality = 0.03, likelihood = "binomial", prior = TRUE)

# Bayesian planning using a custom beta(1, 10) prior and binomial likelihood
x <- planning(
  materiality = 0.03,
  prior = auditPrior(method = "param", likelihood = "binomial", alpha = 1, beta = 10)
)

summary(x) # Prints information about the planning

## -----------------------------------------------------------------------------
# Selection using random record (attributes) sampling
x <- selection(data = BuildIt, size = 100, units = "items", method = "random")

# Selection using fixed interval monetary unit sampling (using column 'bookValue' in BuildIt)
x <- selection(
  data = BuildIt, size = 100, units = "values",
  method = "interval", values = "bookValue"
)

summary(x) # Prints information about the selection

## -----------------------------------------------------------------------------
# Classical evaluation using the Poisson likelihood (and summary statistics)
x <- evaluation(materiality = 0.03, x = 1, n = 100, method = "poisson")

# Bayesian evaluation using a default minimal information prior (and summary statistics)
x <- evaluation(materiality = 0.03, x = 1, n = 100, method = "poisson", prior = TRUE)

# Bayesian evaluation using a custom beta(1, 10) prior (and summary statistics)
x <- evaluation(
  materiality = 0.03, x = 1, n = 100,
  prior = auditPrior(method = "param", likelihood = "binomial", alpha = 1, beta = 10)
)

summary(x) # Prints information about the evaluation

