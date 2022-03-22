library(gcookbook)
library(ggbubr)
library(dplyr)
library(ggplot2)
library(scales)

data(heightweight)
heightweight

bmi= (heightweight$weightLb*703)/(heightweight$heightIn^2)

ggplot(heightweight, aes(x = bmi)) +
  stat_ecdf()  + 
  scale_y_continuous(labels = percent) +
  ggtitle(" ECDF of Body mass index (BMI)") +
   ylab("Percentage of people") 



#`percrntage of people under weight = 
#percrntage of people over weight = 
