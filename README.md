# Group-8-final-project

## Presentation Google Slides
https://docs.google.com/presentation/d/1Caz6MMA8HYwnyKdk4ep88FOCOElI2v6IpNqWNUx6xB8/edit?usp=sharing

# GitHub
* Communication Protocols: As a group we decided to create a slack channel for all communication. We have been using the channel to share resources as well as keep each other up to date on progress, roadblocks, and everything else. 
* Branches: Each team member has a branch named after themselves for uploading work to github. Each branch has an individual folder for our work to prevent issues during merges. The final deliverables will be handled by one group member.

# Presentation
* Topic: Using weather/climate data to predict droughts
* Reason for topic: Rising temperatures and global warming has caused many environmental challenges. Droughts can have lasting effects on food supply and the economy. If we could predict droughts based on current weather/climate patterns it could help areas work to prepare for water shortages before they occur.
* Data Sources: Currently, all of our data has been sourced from Kaggle:
- - https://www.kaggle.com/johnjdavisiv/us-counties-covid19-weather-sociohealth-data
- - https://www.kaggle.com/cdminix/us-drought-meteorological-data
- - https://www.nrcs.usda.gov/wps/portal/nrcs/detail/national/home/?cid=nrcs143_013697
- The main question we hope to answer is whether or not we can predict a drought and its severity based off of weather/climate patterns and landscape/soil. Additioanal questions to answer are whether some factors have a stronger correlation with drought than others.

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
We calculated the accuracy for one week, two weeks, and one month out. Our model's performance improved dramatically from the previous week due to the changes we made in the preprocessing stages. However, we can see that the accuracy falls off as the prediction moves further into the future.<br>
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

## ML Segment 4
### Segment 4 Data Preprocessing
- We ran the model on the full dataset, including all dates from 2000-2020. Prior to this we had only used a small portion of the data in order to keep processing times to a minimum.
- We broke out the training and testing data based on year. We used the years 2000-2016 for our training data, and 2017-2020 for our testing data.
- We connected to the Amazon Web Server in which the data is stored and read it as a csv, then began processing it to prepare it for the machine learning model.

### Segment 4 Accuracy
We ran the model three different times, predicting intervals of one week, two weeks, and one month out. Our results show that the error increases as the date of the prediction moves further out, which we expected.<br>
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

<img src="Deliverable-3/MachineLearning_images/RandomForest_Visualization.png" alt="Random Forest Visualization" width="600"/><br>

### Conclusions
As one would expect, the error in prediction increases as the forecast moves into the future, which is true of most weather forecasting. In order to improve our model's accuracy, we would like to include weather forecasts or to incorporate rolling seven-day averages of weather features such as rainfall. We feel that this would provide greater accuracy than modeling based only on snapshots of the weather in an area. Another area of exploration might be trying other Random Forest Regressor models to see if others have better accuracy than the sklearn model.

# Database
## DB Segment 1
- Please see the ERD documentation which outlines our provisional database. Currently, the database is made up of 4 tables, county information, soil information, timeseries data, and weather data. This data was pulled from Kaggle and will be used to create a machine learning model to try to predict droughts. The .csv files in the Resources folder were imported into the Postgres DB as provisional data. 
- The Machine Learning Model will be connected to the Postgres DB via Amazon Web Services. Once we have the complete data set in Postgres we will utilize AWS relational database service (RDS) to host the database on the cloud so it can be accessed by the entire team. This will allow us to easily connect the our machine learning model to the database.

## DB Segment 2
- The Postgres DB has been set up with 4 tables of static data. The data was pulled from Kaggle and a few other sources (see above for specifics) and cleaned using python scripts before being imported into the database.
  - For a specific break down of the tables please see the ERD or drought_final_DB.sql file.
- The DB is connected with the machine learning model by hosting it in the cloud through AWS/RDS.
- In order to streamline and reduce the data, I dropped all the county and state information from each individual table and only left the county fips code as a unique identifier. This information can be joined back together using a simple SQL join statement. See *drought_join.sql* for a specific example.

# Visualization begninings. 

[Tableau Dashboard](https://public.tableau.com/app/profile/tessa.c5417/viz/ContinuedDroughtworkTXCalifornia/Dashboard1)

![Drought Score](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(118).png)

This is the main image to focus on. What this shows is that most every county shown is not in a drought. This data will be useful in showing how many counties are 
in drought and how scores have changed over time. 

![Avg Precip](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(119).png)

What this is is just a simple value statement of the avg. precip across all counties in mm per day. 

![Avg. Precip over time](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(120).png)

What this shows is the change over the years in avg. precip over time. As can be seen there isn't one trend to really focus on. It will be interesting to look at the 
geographic trends as the project advances. 

## Future considerations
What I want to look into is specifics. What I have currently is just info for everywhere. I want to focus on Texas. I also was only able to get the data up to 2016 only
running. I hope to have all the data ready by next week. All in all I am excited to see what next week will bring. 

## Second Portion 

[Tableau Dashboard](https://public.tableau.com/app/profile/tessa.c5417/viz/ContinuedDroughtworkTXCalifornia/Dashboard1?publish=yes)

This week was mainly planning over plotting. I have some ideas of where to take things though after an initial look at things. We have filtered our data to just Texas and California counties, and have working and connected ML and Databases. 

![2017-2018](https://github.com/TCJester10/Group-8-final-project/blob/main/Images/Screenshot%20(121).png)

This image shows off the total precipitation over the 12 months in the years 2017 and 2018. It is interesting to see how 2017 is skewed so heavily by Hurricane Harvey in 
August. Overall, these were drier years outside of that heavy month though. 

![2020](https://github.com/TCJester10/Group-8-final-project/blob/main/Images/Screenshot%20(122).png)

Here we have our 2020 data. This mainly shows that rain peaks in May, and then gets drier before fall picks it up again. Make sure to take a look at the axis! 2020 was a much wetter year for both Texas and California. 

## Future Considerations. 

This is the fun part. I have a lot of ideas of where to take this. What I have found is that while Tableau has good data for simple charts and filtering data, I need
something more to map things. I tried using soil data's lat and long to make a map of cuotivated and urban land by county, but without actual county lines, I can't map that much. 
So going forward, what I want to do is move to R or Matplotlib and develop a map by county line. I can use shinyApp to do this by precip, change in precip over time, and predicted results going forward. 
I really want to seperate the Texas and California results too, but I think by putting my information in map form that will be done quite easily. I also need to lookout
for things like tropical weather outliers. Harvey hit Texas in 2017 and as we see it caused a massive spike in preciptation. This will be quite interesting going forward I think. I am quite excited. 


## Third Portion

This week I mainly did work adding a time series for our data. My work covered two years, 2015, and 2020. I also Took the time to save our presentation as a pdf and upload it to github incase our file has something wrong. The big difference is that this week the fully functioning aws webserver holding our data was connected, so all data is consistent now across all aspects of our project. 

![2015](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(128).png)

This is 2015, it was a drier year than 2020. Do note the different key.

![2020](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(129).png)

This is 2020, it should be noted that not all counties have measurements, but it is notable that the year appears to be wetter, assuming equality amongst keys. 

## Week 4

This week I finalized the dashboard and got it presentation ready. Thanks to help from Spencer, I found out how to make time series using our aws server data. After connecting it, I proceeded to put together some simple time series looking into what our ML model would be seeing. The dashboard itself showcases counties monthly precip in mm, drought score for the month, and the drought score plotted with the county FIP number. These can be made for any variable you wish to see correlate with drought score, but I used precip just because it's what everyone knows correlates with drought. 

![The dashboard](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(135).png)

This is the dashboard. The top is the monthly precipitation levels for Texas counties over the course of 2019-2020. The bottom is the drought score by the month over the same time period. It should be noted that a lot of the zeros drought scores (no drought) are simply null data. This could have implications with West Texas Counties in late 2020. 

![Raincloud](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(133).png)

This is a simple chart of drought score by county fip code styled like a raincloud. Note the flood of zero scores at the bottom, many of those are null data. 

![Raincloud](https://github.com/TCJester10/Group-8-final-project/blob/Tessa/Images/Screenshot%20(132).png)

This is the precip time series. I want to mention that the center of the color is set to 50 mm per month. Going forward, I'd like to set it to an actual drought measure. 

Overall I'm happy with how things turned out. However, there are more visualizations I'd like to make. I want to link up to our ML model and its results to showcase by the county where our predictions were vs reality. I'd also like to see if I can make something in R that looks at previous rain levels to see how that effects drought levels, as I doubt drought score is impacted by one dry or wet month very often. I also would like to remove the nulls, so that way we don't have a lot of empty data skewing our results. Overall, I am happy with our project and think it has a good future. 
