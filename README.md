# Group-8-final-project

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

## Which model did you choose and why?
We chose a Random Forest Regressor model.
- We chose a Random Forest model because we are using tabular data with thousands of data points. A Random Forest model will be quicker than a Neural Network while achieving roughly the same accuracy. It will also have the added benefit of being far more interpretable than a Neural Network.
- We chose a Random Forest model over Logistic Regression because we have thousands of data points and this may overwhelm a Logistic Regression model.
- We chose a Random Forest model over a Support Vector Machine because SVMs are great for binary classification, but we want to predict drought on five levels.
- Instead of using the Random Forest Classifier that we used in the module, we chose a Random Forest Regressor since we need predictions which are continuous rather than binary.

## How are you training your model?
We are training our model on a subset of the data. Since our project is time dependent, we will use the first fifteen years of data to train the model, then four additional years for testing.

## What is the model's accuracy?
Mean Absolute Error (MAE): 0.26875707529915116<br>
Mean Squared Error (MSE): 0.227910793374645<br>
Root Mean Squared Error (RMSE): 0.4774000349545913<br>

## How does this model work?
The Random Forest Regressor works by creating a number of weak models, then analyzing the preponderance of those models predictions to decide upon a final, stronger prediction.

# Database

- Please see the ERD documentation which outlines our provisional database. Currently, the database is made up of 4 tables, county information, soil information, timeseries data, and weather data. This data was pulled from Kaggle and will be used to create a machine learning model to try to predict droughts. The .csv files in the Resources folder were imported into the Postgres DB as provisional data. 
- The Machine Learning Model will be connected to the Postgres DB via Amazon Web Services. Once we have the complete data set in Postgres we will utilize AWS relational database service (RDS) to host the database on the cloud so it can be accessed by the entire team. This will allow us to easily connect the our machine learning model to the database.

# Visualization begninings. 

[Tableau Dashboard](https://public.tableau.com/app/profile/tessa.c5417/viz/Initiallookatdroughtdataovertime/Dashboard1)

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
