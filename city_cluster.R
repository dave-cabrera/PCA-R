library(readxl); library(dplyr); library(corrplot); library(factoextra); library(tidyverse); 
library(cluster)

## Part 1: Principal component analysis

# Read in data
cities = read_excel('pollution.xlsx')
cities = column_to_rownames(cities, var = "City")

# Correlation plot
cities_cor = cor(cities)
corrplot.mixed(cities_cor, upper = "number", lower = "square", bg = "black")

# Principal component analysis and screeplot
city_PCR = prcomp(cities, scale. = T)
fviz_screeplot(city_PCR)
# According to the screeplot, use first 2 PC's

summary(city_PCR)
city_PCR$rotation
fviz_pca_biplot(city_PCR, geom = "text")

# The PCA biplot shows which cities are similar to each other based on the information the data
# givs us. Cities that are close together are similar in terms of the data.

## Part 2: K means cluster analysis

# Scale/normalize data
means = apply(cities, 2, mean)
sds = apply(cities, 2, sd)
cities_norm = scale(cities, center=means, scale=sds)

fviz_nbclust(cities_norm, kmeans, method = "silhouette")
fviz_nbclust(cities_norm, kmeans, method = "wss")
# We should use 4 groups/means according to the silhouette and within sums of squares plota

set.seed(123)
k1 = kmeans(cities_norm, 4, 25)
fviz_cluster(k1, cities_norm)






