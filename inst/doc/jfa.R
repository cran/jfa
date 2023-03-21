## ---- include = FALSE---------------------------------------------------------
library(jfa)

## -----------------------------------------------------------------------------
# Load the BuildIt population
data("BuildIt")
head(BuildIt)

## -----------------------------------------------------------------------------
# Stage 1: Planning
stage1 <- planning(
  materiality = 0.03, expected = 0.01,
  likelihood = "poisson", conf.level = 0.95
)
summary(stage1)

## -----------------------------------------------------------------------------
# Stage 2: Selection
stage2 <- selection(
  data = BuildIt, size = stage1,
  units = "values", values = "bookValue",
  method = "interval", start = 1
)
summary(stage2)
# Stage 3: Execution
sample <- stage2[["sample"]]

## -----------------------------------------------------------------------------
# Stage 4: Evaluation
stage4 <- evaluation(
  materiality = 0.03, method = "stringer",
  conf.level = 0.95, data = sample,
  values = "bookValue", values.audit = "auditValue"
)
summary(stage4)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
# Digit distribution test
x <- digit_test(sinoForest$value, check = "first", reference = "benford")
print(x)
plot(x)

## ----fig.align="center", fig.height=4, fig.width=6----------------------------
# Repeated values test
x <- repeated_test(sanitizer$value, check = "lasttwo", samples = 5000)
print(x)
plot(x)

