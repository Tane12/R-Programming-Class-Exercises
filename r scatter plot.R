library(tidyverse)
hdi <- HDI_CPI_dataset_1_
sp <- ggplot(hdi, aes(CPI.2015, HDI.2015))
sp + geom_point(aes(color = Region), shape = 21,
                fill = "white", size = 3, stroke = 2) + theme_light() +
  labs(x = "Corruption Perception", 
       y = "Human developemnt Index",
       title = "corruption Index") +
  stat_density2d()
  

#stat_smooth(se = FALSE)


