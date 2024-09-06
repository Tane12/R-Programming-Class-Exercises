library(tidyverse)
tb <- read.csv(Tuberculosis_dataset)
tb <- as_tibble(Tuberculosis_dataset)
tb

tb.gathered <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = T) %>% 
  arrange(country)
tb.gathered

tb.separated <- tb.gathered %>% separate(column, into = c("sex", "age"))
tb.separated

tb.separated <- tb.separated %>% separate(age, into = c("age.low", "age.high"))
tb.separated

tb.united <- tb.separated %>% unite("age.new", c("age.low", "age.high"))
tb.united

weather <- as.tibble(Weather_dataset)
weather

weather.spread <- spread(weather, key = element, value = value)
weather.spread


