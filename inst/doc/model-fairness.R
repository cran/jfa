## ----include = FALSE----------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
data("compas")
head(compas)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "dp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "pp"
)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
x <- model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "pp"
)
summary(x)
plot(x)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "prp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "ap"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "fnrp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "fprp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "tprp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "npvp"
)

## -----------------------------------------------------------------------------
model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "sp"
)

## -----------------------------------------------------------------------------
x <- model_fairness(
  data = compas,
  protected = "Ethnicity",
  target = "TwoYrRecidivism",
  predictions = "Predicted",
  privileged = "Caucasian",
  positive = "yes",
  metric = "pp",
  prior = TRUE
)
print(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "posterior")

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
plot(x, type = "robustness")

