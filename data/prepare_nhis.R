################################################################################
# AUTHOR:             JACOB JAMESON
# LAST UPDATED:       8/7/2022
# PURPOSE:            CONSTRUCT ANALYTICAL DATASET FOR NHIS (2015-2019)
################################################################################
# Libraries used
library(tidyverse)


# Path to data on computer
github_path <- "~/Documents/GitHub/"
data_path <- paste0(github_path,"AcademyHealth-Data-Visualization-Challenge/data/")



# Read in data and keep variables of interest
adult.21 <- read_csv(paste0(data_path,'adult18.csv'), guess_max = 8261)

# Rename variables lowercase 
names(adult.21) <- tolower(names(adult.21))


# Restrict age between 18-26 



# shthpv_a 19
# shthpv2 18 17 16


adult.21$shthpv2
