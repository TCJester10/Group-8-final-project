# Group-8-final-project

# Machine Learning
## Which model did you choose and why?

*    We chose a Random Forest because we are using tabular data with thousands of data points. A Random Forest model will be quicker than a Neural Network while achieving roughly the same accuracy. It will also have the added benefit of being far more interpretable than a Neural Network.
*    We chose a Random Forest model over Logistic Regression because we have thousands of data points and this may overwhelm a Logistic Regression model.
*    We chose a Random Forest model over a Support Vector Machine because SVMs are great for binary classification, but we want to predict drought on five levels.



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
