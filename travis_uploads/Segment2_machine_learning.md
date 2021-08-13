# Machine Learning

## Segment 1
### Which model did you choose and why?
We chose a Random Forest Regressor model.
- We chose a Random Forest model because we are using tabular data with thousands of data points. A Random Forest model will be quicker than a Neural Network while achieving roughly the same accuracy. It will also have the added benefit of being far more interpretable than a Neural Network.
- We chose a Random Forest model over Logistic Regression because we have thousands of data points and this may overwhelm a Logistic Regression model.
- We chose a Random Forest model over a Support Vector Machine because SVMs are great for binary classification, but we want to predict drought on five levels.
- Instead of using the Random Forest Classifier that we used in the module, we chose a Random Forest Regressor since we need predictions which are continuous rather than binary.

### How are you training your model?
We are training our model on a subset of the data. Since our project is time dependent, we will use the first sixteen years of data to train the model, then four additional years for testing.

### Accuracy After Segment 1
After Segment 1 we received the following results:
Mean Absolute Error (MAE): 0.26875707529915116
Mean Squared Error (MSE): 0.227910793374645
Root Mean Squared Error (RMSE): 0.4774000349545913

### How does this model work?
The Random Forest Regressor works by creating a number of weak models, then analyzing the preponderance of those models predictions to decide upon a final, stronger prediction.

## Segment 2
### Data Preprocessing
- In order to prepare the data for the Random Forest Regressor, we first merged our two datasets based on the county FIPS code. The first dataset is a chronological set of weather data. The second dataset reflects static topographical and soil quality data related to each county. 
- Next we limited the results only to Texas since we wanted to achieve higher accuracies by limiting the location to a single state. To do this we selected only the FIPS codes that begin with "48xxx", which corresponds to all Texas counties.
- Lastly we dropped some data which was redundant (like the multiple measures of humidity or the differences between high and low temps for each day) or others which were identifiers like latitude and longitude. 

### Accuracy After Segment 2
After Segment 1 we received the following results:
Mean Absolute Error (MAE): 0.5480466754695936
Mean Squared Error (MSE): 0.5444936385385971
Root Mean Squared Error (RMSE): 0.7378981220592699

The MSE increased, which indicates that the soil data actually made it more difficult for the Random Forest Model to predict outcomes correctly. We may be better served by leaving out the soil data.