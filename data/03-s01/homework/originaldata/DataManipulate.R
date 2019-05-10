library(tidyverse)

dat2016 <- read_csv("Happiness2016.csv") %>% select(Country, Region)
dat2017 <- read_csv("Happiness2017.csv") %>% 
  left_join(dat2016, ., by = "Country") %>%
  arrange(Happiness.Rank) %>%
  filter(!is.na(Happiness.Rank))
write.csv(dat2017, "Happiness2017a.csv", row.names = FALSE)
