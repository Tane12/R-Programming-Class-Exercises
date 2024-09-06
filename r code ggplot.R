library(tidyverse)
hdi <- read_csv("C:/Users/tanej/Downloads/HDI CPI dataset.zip")
hdi  <- as.tibble(hdi)
hdi

sc <- ggplot(hdi, aes(CPI.2015, HDI.2015))
sc


sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region ~.) +
  stat_smooth() + coord_cartesian(xlim = c(0.75, 1))

sc + geom_point(aes(color = Region), size = 3) + facet_grid(Region ~.) +
  stat_smooth() + theme_minimal()

