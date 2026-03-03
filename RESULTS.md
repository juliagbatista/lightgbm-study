# Results and Explanation for LightGBM Regression Study

## Results
- **Test RMSE:** 1.66 (example value)
- **Predicted vs Actual Plot:**
  - The scatter plot shows predicted values (y-axis) against actual values (x-axis) for the test set.
  - The red line (y = x) represents perfect predictions.
  - Most points are close to the line, indicating reasonable accuracy.

## Explanation
- **RMSE (Root Mean Squared Error):**
  - Measures the average difference between predicted and actual values.
  - Lower RMSE means better model performance.
  - Compare RMSE to the range or standard deviation of your target variable (Y) to judge if it is good.

- **LightGBM Warnings:**
  - "No further splits with positive gain" means the model could not find splits that improved prediction. This is common with simple or small datasets and does not prevent predictions.

- **Interpretation:**
  - The model learned some relationship between features and the target, but with synthetic data, accuracy is limited.
  - For better results, use more complex or real-world data.


