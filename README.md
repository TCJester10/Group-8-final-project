
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
