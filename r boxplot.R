library(tidyverse)
my.box <- ggplot(df, aes(x = Survived, y = Age))
my.box + geom_boxplot(outlier.color = "red", outlier.shape = 4) + 
  geom_jitter(width =0.2, aes(color = Sex)) +
  labs(title = "Survival rate on Titanic Based on Age and Gender") +
  theme_light() + coord_flip()

