## ----include = FALSE----------------------------------------------------------
library(jfa)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
# Frequentist hypothesis test
x <- digit_test(sinoForest$value, check = "first", reference = "benford")
print(x)
plot(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
# Bayesian hypothesis test using default prior
x <- digit_test(sinoForest$value, check = "first", reference = "benford", prior = TRUE)
print(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "robustness")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "sequential")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
x <- repeated_test(sanitizer$value, check = "lasttwo", samples = 2000)
print(x)
plot(x)

