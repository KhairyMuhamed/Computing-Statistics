# excersises
# e1
library(dplyr)
library(statsr)
library(ggplot2)
data(ames)
ggplot(data = ames, aes(x = price)) + geom_histogram(binwidth = 200)


sample <- ames %>%
sample_n(size = 50) 

ggplot(data = sample, aes(x = price)) +
  geom_histogram(binwidth = 200)

sample %>%
  summarise(mean(price))
#----------------------------------------------------------------------------
#e2
sample_means50 <- ames %>%
  rep_sample_n(size = 50, reps = 5000, replace = TRUE) %>%
  summarise(x_bar = mean(price))
ggplot(data = sample_means50, aes(x = x_bar)) + geom_histogram(binwidth = 200)

mean(sample_means50$x_bar)


#--------------------------------------------------------------------------
#e3
sample_means150<- ames %>%
  rep_sample_n(size = 150, reps = 5000, replace = TRUE) %>%
  summarise(x_bar = mean(price))
ggplot(data = sample_means150, aes(x = x_bar)) + geom_histogram(binwidth = 200)

mean(sample_means150$x_bar)
#---------------------------------------------------------------------------
#e4

sample_15 <- ames %>%
  sample_n(size = 15)
sample_15 %>%
  summarise(mean(price))
#---------------------------------------------------------------------------
#e5
sample_means15<- ames %>%
  rep_sample_n(size = 15, reps = 2000, replace = TRUE) %>%
  summarise(x_bar = mean(price))
ggplot(data = sample_means15, aes(x = x_bar)) + geom_histogram(binwidth = 200)

mean(sample_means15$x_bar)
#population mean
ames %>%
  summarise(mean(price))
#---------------------------------------------------------------------------
#e6

sample_means150<- ames %>%
  rep_sample_n(size = 15, reps = 2000, replace = TRUE) %>%
  summarise(x_bar = mean(price))
ggplot(data = sample_means150, aes(x = x_bar)) + geom_histogram(binwidth = 200)

mean(sample_means150$x_bar)