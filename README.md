# LightGBM Regression Study in R

This repository contains a simple example script for running a regression model using LightGBM in R. It is intended for learning and demonstration purposes.

## File
- `simple_lightgbm_regression.R`: R script that generates synthetic data, trains a LightGBM regression model, and visualizes the results.

## How it works
1. **Data Generation**: Creates synthetic data with 100 samples and 5 features. The target variable is a linear combination of the first two features plus random noise.
2. **Train/Test Split**: Splits the data into training (80%) and testing (20%) sets.
3. **Model Training**: Trains a LightGBM regression model on the training data.
4. **Prediction & Evaluation**: Predicts on the test set and calculates RMSE (Root Mean Squared Error) to evaluate performance.
5. **Visualization**: Plots predicted vs actual values for the test set.

## Usage
1. Open `simple_lightgbm_regression.R` in RStudio or your preferred R environment.
2. Run the script. It will install the `lightgbm` package if needed, generate data, train the model, and display results.

## Requirements
- R (version 4.0 or higher recommended)
- `lightgbm` package (will be installed automatically if missing)

## Purpose
This project is for understand how LightGBM can be used for regression tasks in R.

---
Feel free to modify.
