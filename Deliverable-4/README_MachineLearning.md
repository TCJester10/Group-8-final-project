# Group-8-final-project

# Machine Learning

## ML Segment 1
### Which model did you choose and why?
We chose a Random Forest Regressor model.
- We chose a Random Forest model because we are using tabular data with thousands of data points. A Random Forest model will be quicker than a Neural Network while achieving roughly the same accuracy. It will also have the added benefit of being far more interpretable than a Neural Network.
- We chose a Random Forest model over Logistic Regression because we have thousands of data points and this may overwhelm a Logistic Regression model.
- We chose a Random Forest model over a Support Vector Machine because SVMs are great for binary classification, but we want to predict drought on five levels.
- Instead of using the Random Forest Classifier that we used in the module, we chose a Random Forest Regressor since we need predictions which are continuous rather than binary.

### How are you training your model?
We are training our model on a subset of the data. Since our project is time dependent, we will use the first sixteen years of data to train the model, then four additional years for testing.

### How does this model work?
The Random Forest Regressor works by creating a number of weak models, then analyzing the preponderance of those models predictions to decide upon a final, stronger prediction.

### Segment 1 Accuracy
After Segment 1 we received the following results:<br>
Mean Absolute Error (MAE): 0.26875707529915116<br>
Mean Squared Error (MSE): 0.227910793374645<br>
Root Mean Squared Error (RMSE): 0.4774000349545913<br>

## ML Segment 2
### Segment 2 Data Preprocessing
- In order to prepare the data for the Random Forest Regressor, we first merged our two datasets based on the county FIPS code. The first dataset is a chronological set of weather data. The second dataset reflects static topographical and soil quality data related to each county. 
- Next we limited the results only to Texas since we wanted to achieve higher accuracies by limiting the location to a single state. To do this we selected only the FIPS codes that begin with "48xxx", which corresponds to all Texas counties.
- Lastly we dropped some data which was redundant (like the multiple measures of humidity or the differences between high and low temps for each day) or others which were identifiers like latitude and longitude. 

### Segment 2 Accuracy
After Segment 1 we received the following results:<br>
Mean Absolute Error (MAE): 0.5480466754695936<br>
Mean Squared Error (MSE): 0.5444936385385971<br>
Root Mean Squared Error (RMSE): 0.7378981220592699<br>

The MSE increased, which indicates that the soil data actually made it more difficult for the Random Forest Model to predict outcomes correctly. We may be better served by leaving out the soil data.

## ML Segment 3
### Segment 3 Data Preprocessing
- We made a few changes in the preprocessing of the data in order to achieve better results with our machine learning model. First we used the datetime module and a timedelta function to find the drought scores for a date in the future that we would like to predict and joined that to our original dataframe.
- Then we accounted for seasonality in drought scores by finding the drought score for one year prior to the date which we would like to predict. 
- We also filled the NaN values in drought scores with the previous real value. This gave us seven times more data than we had before.

### Segment 3 Accuracy
We calculated the accuracy for one week, two weeks, and one month out. Our model's performance improved dramatically from the previous week due to the changes we made in the preprocessing stages. However, we can see that the accuracy falls off as the prediction moves further into the future.
One-Week Prediction:<br>
Mean Absolute Error (MAE): 0.11395177801839734<br>
Mean Squared Error (MSE): 0.03870444769778442<br>
Root Mean Squared Error (RMSE): 0.19673445986350338<br>

Two-Week Prediction:<br>
Mean Absolute Error (MAE): 0.15552836606280845<br>
Mean Squared Error (MSE): 0.0651923262596554<br>
Root Mean Squared Error (RMSE): 0.25532787991062666<br>

One-Month Prediction:<br>
Mean Absolute Error (MAE): 0.21093419709423947<br>
Mean Squared Error (MSE): 0.1054075453231857<br>
Root Mean Squared Error (RMSE): 0.3246652819800505<br>

The results show error increasing as the prediction date moves further into the future, as we would expect.

## ML Segment 3
### Segment 3 Data Preprocessing
- We ran the model on the full dataset, including all dates from 2000-2020. Prior to this we had only used a small portion of the data in order to keep processing times to a minimum.
- We broke out the training and testing data based on year. We used the years 2000-2016 for our training data, and 2017-2020 for our testing data.
- We connected to the Amazon Web Server in which the data is stored and read it as a csv, then began processing it to prepare it for the machine learning model.

### Segment 4 Accuracy
We ran the model three different times, predicting intervals of one week, two weeks, and one month out. Our results show that the error increases as the date of the prediction moves further out, which we expected.
One-Week Prediction:<br>
Mean Absolute Error (MAE): 0.20413663197654738<br>
Mean Squared Error (MSE): 0.11706565296546045<br>
Root Mean Squared Error (RMSE): 0.3421485831703245<br>

Two-Week Prediction:<br>
Mean Absolute Error (MAE): 0.3350311896781634<br>
Mean Squared Error (MSE): 0.25677364457685015<br>
Root Mean Squared Error (RMSE): 0.5067283735660064<br>

One-Month Prediction:<br>
Mean Absolute Error (MAE): 0.5485971341867966<br>
Mean Squared Error (MSE): 0.5885039872275839<br>
Root Mean Squared Error (RMSE): 0.767140135325733<br>

### Random Forest Visualization
We used sklearn and matplotlib to visualize what is occuring within the random forest model. (We had to limit the max_depth of the model to 3 for the visualization to display properly, although the full model used a depth of 25.)

<img src="MachineLearning_images/RandomForest_Visualization.png" alt="Random Forest Visualization" width="600"/><br>

### Conclusions
As one would expect, the error in prediction increases as the forecast moves into the future, which is true of most weather forecasting. In order to improve our model's accuracy, we would like to include weather forecasts or to incorporate rolling seven-day averages of weather features such as rainfall. We feel that this would provide greater accuracy than modeling based only on snapshots of the weather in an area.

