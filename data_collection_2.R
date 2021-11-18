# This time I am just going to use the data from after the 2020 election so it
# is consistent with the dictionaries. So we have from November 3, 2020 to
# today, November 17, 2021. It actually might make more sense to just look at
# the year so I am going to November 3, 2021. 
library(tidyverse)
set.seed(123)

# generating random numbers between 1 and 52. Actually not because the months of
# March, April, May, June, July, August are unavailable. So I will be taking a
# random sample of the numbers 1:16 and 43:52

random_numbers <- sample(c(1:16, 43:52), 10, replace = FALSE)

# those random numbers are 47,3,11,7,13,2,43,8,15,49 which translates into the
# weeks of 09/28/2021, 11/24/2020, 01/19/2021, 12/22/2020, 02/02/2021,
# 11/17/2020, 08/31/2021, 12/29/2020, 02/16/2021, 10/12/2021


# reading in the files

file_1 <- read_tsv("data/bias_data/third-eye-08_31_21.tsv")
file_2 <- read_tsv("data/bias_data/third-eye-01_19_21.tsv")
file_3 <- read_tsv("data/bias_data/third-eye-09_28_21.tsv")
file_4 <- read_tsv("data/bias_data/third-eye-11_24_20.tsv")
file_5 <- read_tsv("data/bias_data/third-eye-12_22_20.tsv")
file_6 <- read_tsv("data/bias_data/third-eye-02_02_21.tsv")
file_7 <- read_tsv("data/bias_data/third-eye-12_29_20.tsv")
file_8 <- read_tsv("data/bias_data/third-eye-11_17_20.tsv")
file_9 <- read_tsv("data/bias_data/third-eye-10_12_21.tsv")
file_10 <- read_tsv("data/bias_data/third-eye-02_16_21.tsv")

