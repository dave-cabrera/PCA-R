library(readxl); library(dplyr); library(corrplot); library(factoextra)

star<- read_excel("Star_Sample.xlsx")

# Correlation matrix
star_num = star %>%
  select(-Color)
star_r = cor(star_num)

# Scatterplots
pairs(star_num)


# Correlation plot
corrplot.mixed(star_r, upper = "number", lower = "square", bg = "black")

# Screeplot
star_PCR = prcomp(star_num, scale. = T)
fviz_screeplot(star_PCR)

# Use 4 principal components

summary(star_PCR)

star_PCR

star_PCR$rotation[,1:4]

# First PC is mostly log_dist and mag_earth
# Second PC is mostly mag10 and declination
# Third PC is mostly ascension
# Fourth PC is mostly declination and mag10


# Graphing the PCs
# PCs 1-2
fviz_pca(star_PCR, geom = "text")

#PCs 3-4
fviz_pca(star_PCR, geom = "text", axes=3:4)

