library(dplyr)
library(ggplot2)
library(detzrcr)
library(gcookbook)
#Ex 1
data(heightweight)
heightweight

population = data.frame(heightweight)

pop_var = var(heightweight$heightIn)
pop_var

pop_mean = mean(heightweight$heightIn)
pop_mean

sample_50 = sample_n(population, size = 50)

mean_sample = mean(sample_50$heightIn)
mean_sample

sample_sd = sd(sample_50$heightIn)
sample_sd

t_star_95 = qt(0.975,df = 49)

lower_t = mean_sample - t_star_95 * sample_sd/sqrt(50)
lower_t  
  
upper_t = mean_sample + t_star_95 * sample_sd/sqrt(50)  
upper_t

CI = c(lower = lower_t,upper = upper_t)
print(CI)

#--------------------------------------------------------------------------
#Ex 2
var = var(sample_50$heightIn)
var

mean_est=sum(sampl$heightIn)/length(sampl$heightIn)
mean_est

var_est <- sum((sampl$heightIn-mean_est)^ 2)/ length (sampl$heightIn)
var_est
