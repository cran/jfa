## ----include = FALSE----------------------------------------------------------
library(jfa)

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

