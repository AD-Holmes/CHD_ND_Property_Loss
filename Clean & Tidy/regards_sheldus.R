### Pulling in and Tidying the Data
## Antonio Holmes
# 03/21/2023



## Installing and Calling Packages
install.packages("readxl","dplyr","tidyverse")
library(readxl,dplyr,tidyverse)

## Read in data
regards_sheldus <- read_excel("Data/regardssheldus_forlaurenantonio_031423.xlsx")


## Removing Empty Rows
regards_sheldus<- regards_sheldus %>% filter(dmgpcmonth!="NA")

## This Dataset consist of individuals who was not impacted by disaster damages within 1 month
disaster_not_within_1m<- regards_sheldus %>% filter(dmgpcmonth<=0)

## This Dataset consist of individuals who was impacted by disaster damages within 1 month
disaster_within_1m<-regards_sheldus %>% filter(dmgpcmonth>0)

## Once I have all the necessary datasets I need I will remove the old version to decline my RAMs
rm(regards_sheldus)

