# Simple LightGBM Regression Example in R
# This script demonstrates how to use LightGBM for a regression task in R.

# Install and load the lightgbm package if not already installed
if (!requireNamespace("lightgbm", quietly = TRUE)) {
  install.packages("lightgbm", repos = "https://cran.r-project.org")
}
library(lightgbm)

# Generate synthetic regression data
set.seed(123)
n <- 100
X <- matrix(rnorm(n * 5), nrow = n, ncol = 5)
Y <- X[, 1] * 3 + X[, 2] * -2 + rnorm(n)

# Split into train and test sets
train_idx <- sample(seq_len(n), size = 0.8 * n)
X_train <- X[train_idx, ]
Y_train <- Y[train_idx]
X_test <- X[-train_idx, ]
Y_test <- Y[-train_idx]

# Prepare data for LightGBM
train_data <- lgb.Dataset(data = X_train, label = Y_train)

# Set parameters for regression
params <- list(
  objective = "regression",
  metric = "rmse"
)

# Train the LightGBM model
model <- lgb.train(
  params = params,
  data = train_data,
  nrounds = 100
)

# Predict on test data
preds <- predict(model, X_test)

# Evaluate performance
rmse <- sqrt(mean((preds - Y_test)^2))
cat("Test RMSE:", rmse, "\n")

# Plot predictions vs actual values
plot(Y_test, preds, main = "LightGBM Regression: Predictions vs Actual",
     xlab = "Actual Values", ylab = "Predicted Values")
abline(0, 1, col = "red")
