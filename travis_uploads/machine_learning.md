# Machine Learning

## Which model did you choose and why?
We chose a Random Forest Regressor model.
- We chose a Random Forest model because we are using tabular data with thousands of data points. A Random Forest model will be quicker than a Neural Network while achieving roughly the same accuracy. It will also have the added benefit of being far more interpretable than a Neural Network.
- We chose a Random Forest model over Logistic Regression because we have thousands of data points and this may overwhelm a Logistic Regression model.
- We chose a Random Forest model over a Support Vector Machine because SVMs are great for binary classification, but we want to predict drought on five levels.
- Instead of using the Random Forest Classifier that we used in the module, we chose a Random Forest Regressor since we need predictions which are continuous rather than binary.

## How are you training your model?
We are training our model on a subset of the data. Since our project is time dependent, we will use the first fifteen years of data to train the model, then four additional years for testing.

## What is the model's accuracy?
Mean Absolute Error (MAE): 0.26875707529915116
Mean Squared Error (MSE): 0.227910793374645
Root Mean Squared Error (RMSE): 0.4774000349545913

## How does this model work?
The Random Forest Regressor works by creating a number of weak models, then analyzing the preponderance of those models predictions to decide upon a final, stronger prediction.