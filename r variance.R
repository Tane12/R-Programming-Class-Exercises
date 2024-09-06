library(tidyverse)
df <- tibble(Skewness_dataset_1, Skewness_dataset_2)
summary(df)
lapply(df, mean)
sapply(df, mean)
sapply(df, var)
sapply(df, sd)
coef.var <- sapply(df, sd)/sapply(df, mean)
coef.var
