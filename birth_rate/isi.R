# load required packages
library(readr)
library(dplyr)
library(ggplot2)

#load birth rate data
birth <- read.csv('nchs-birth-rates-for-females-by-age-group-united-states.csv')

#view structure of data
str(birth)

#summary of birth data
summary(birth)

#filter data for 1955 only
longevity <- birth %>%
  filter(Year == 1955 & !is.na(Age.Group))%>%
  select(Year, Age.Group, Birth.Rate)

#find the highest birth rate
high_birth <- longevity %>%
  filter(Birth.Rate >= 90) %>%
  arrange(Age.Group)%>%
  head(5)


#export csv
#write.csv(high_birth.csv)
