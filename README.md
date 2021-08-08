# PCA and K means clustering using R.
This code does performs principal component analysis and K means clustering on a dataset of information from 41 US cities. The data includes the population of each city (thousands, 1970 census) as well as the average yearly temperature (F), wind, precipitation, days of precipitation, S02 pollution, and the number of manufacturing companies employing more than 20 people.

What is someone wanted to quickly place these 41 cities into different groups? Instead of manually going through the data, choosing the optimal number of groups, and deciding which city should be in each group, using our data, we can get R to decide how many groups are needed and which cities will be in each group.

### Part 1: Principal Component Analysis
Principal component analysis creates a 2D graph that clusters cities together based off similarities of their characteristics listed above. In the PCA biplot you can see the impact of each variable when it comes to putting cities on the graph. Cities with high precipitation are more likely to be further up and to the right on the graph. Cities with higher temperatures and lower populations are more likely to be in the bottom left ortion of the graph, and cities with higher populations but lower populations and precipitation are more likely to be in the bottom right portion.

### Part 2: K means clustering
Using K means clustering the cities were put into four groups.

Group 1: Phoenix, Albuquerque, San Francisco, Denver, Salt Lake City, Dallas, Wichita, Omaha, Kansas City, Des Moines.

Group 2: Miami, New Orleans, Jacksonville, Nashville, Little Rock, Richmond, Memphis, Houston

Group 3: Charleston, Seattle, Buffalo, Providence, Cleveland, St. Paul, Detroit, St. Louis, Washington, Milwaukee, Minneapolis, Indianapolis, Columbus, Cincinnati

Group 4: Philadephia, Chicago
