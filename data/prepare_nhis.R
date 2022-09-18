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
adult.15 <- read_csv(paste0(data_path,'adult15.csv'), guess_max = 8261)

# Rename variables lowercase 
names(adult.15) <- tolower(names(adult.15))

# Restrict age between 18-26 
adult.15 <- filter(adult.15, age_p >= 18, age_p <=26)

adult.15$year = 2015
# shthpv_a 19
# shthpv2 18 17 16


adult.21$shthpv2
adult.15


final.df <- data.frame()
for (x in c('15', '16', '17', '18')){
  
  data <- paste0(paste0('adult',x),'.csv')
  data <- read_csv(paste0(data_path, data), guess_max = 8261)
  
  # Rename variables lowercase 
  names(data) <- tolower(names(data))
  
  # Restrict age between 18-26 
  data <- filter(data, age_p >= 18, age_p <=26)
  
  # Create year variable
  data$year<- as.numeric(paste0('20',x))
  
  final.df <- bind_rows(final.df, data)
}

################################################################################
############################ SDOH VARIABLE CREATION ############################ 
################################################################################
# Economic Stability:
#     - Income last year ()
#     - Employment ()

# Education Access and Quality
#     - Highest level of education
#     - How well spoke English

# Social and Community Context
#     - People in neighborhood help each other
#     - People I count on in neighborhood
#     - Close knit neighborhood

# Health Care Access and Quality
#     - Insurance Coverage in US
#     - Place for usual health care
#     - Time since last seen provider
#     - Looked up health information on internet, past 12 months

# Neighborhood and the Built Environment
#     - People in neighborhood help each other
#     - People I count on in neighborhood
#     - People in neighborhood can be trusted
#     - Close knit neighborhood
################################################################################





