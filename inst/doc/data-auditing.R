## ----include = FALSE----------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
# Frequentist hypothesis test
digit_test(sinoForest$value, check = "first", reference = "benford")

# Bayesian hypothesis test using default prior
digit_test(sinoForest$value, check = "first", reference = "benford", prior = TRUE)

## -----------------------------------------------------------------------------
repeated_test(sanitizer$value, check = "lasttwo", samples = 5000)

