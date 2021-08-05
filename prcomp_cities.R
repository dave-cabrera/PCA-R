library(readxl); library(dplyr); library(corrplot); library(factoextra); library(tidyverse)

# Read in the data
pollution = read_excel('pollution.xlsx')

# Adds rownames
pollution = column_to_rownames(pollution, var = "City")
has_rownames(pollution)

# Correlation plot
pollution_cor = cor(pollution)
corrplot.mixed(pollution_cor, upper = "number", lower = "square", bg = "black")

# Principal component analysis and screeplot
pollution_PCR = prcomp(pollution, scale. = T)
fviz_screeplot(pollution_PCR)

# The screeplot starts to flatten quickly, use 2 principal components

summary(pollution_PCR)
pollution_PCR

fviz_pca_biplot(pollution_PCR, geom = "text")


