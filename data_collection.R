# The third eye data starts at August 25th 2017. Today is October 25, 2021. I am
# going to take a random sample of 10 weeks from the 217 weeks in between the
# dates because you can only download the data 1 week at a time. It is obviously
# not as comprehensive as doing all of the weeks. 

set.seed(1121)

random_numbers <- sample(1:217, 10, replace = FALSE)

# the numbers generated above are 193, 205, 96, 175, 150, 22, 109, 44, 83, 92.
# This translates into start dates of 05/7/2021, 07/30/2021, 06/28/2019,
# 01/01/2021, 07/10/2020, 01/26/2018, 09/27/2019, 06/29/2018, 03/29/2019,
# 05/31/2019. One of the things I noticed is that there seems to be a lot of
# summer months in here. If I have time I should do a sensitivity analysis using
# different samples

data_1 <- read_csv("data/third_eye_01_01_21.csv")
data_2 <- read_csv("data/third_eye_01_26_18.csv")
data_3 <- read_csv("data/third_eye_03_29_19.csv")
data_4 <- read_csv("data/third_eye_05_31_19.csv")
data_5 <- read_csv("data/third_eye_06_28_19.csv")
data_6 <- read_csv("data/third_eye_07_10_20.csv")
data_7 <- read_csv("data/third_eye_06_29_18.csv")
data_8 <- read_csv("data/third_eye_09_27_19.csv")

# joining all of the data frames

data_joined <- data_1 %>%
  bind_rows(data_2, 
            data_3,
            data_4,
            data_5,
            data_6,
            data_7,
            data_8)

summary(data_joined)

tidy_data <- data_joined %>%
  clean_names() %>%
  filter(channel != "BBCNEWS") %>%
  mutate(date_sub = substr(date_time_utc, 1, 10),
         date = ymd(date_sub)) %>%
  select(-date_sub, - date_time_utc, -https_archive_org_details)

write_csv(tidy_data, "tidy_chyron_data.csv")
