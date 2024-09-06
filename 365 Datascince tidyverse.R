library(tidyverse)

star <- starwars
star

view(star)
filter(star, species== "Droid", homeworld == "Tatooine")
filter(star, eye_color == "red" | eye_color == "yellow",
       species == "Human")
select(star, name, birth_year, homeworld, species, starships)
select(star, name, homeworld:starships)
select(star, ends_with("color"))
select(star, name, vehicles, starships, everything())

star <- mutate(star, bmi = mass/((height/100)^2))
select(star, name:bmi)

star.trans <- transmute(star, bmi2 = mass/((height/100)^2))
star.trans

arrange(star, desc(mass))

summarize(star, avg.height = mean(height, na.rm = T))

star.species <- group_by(star, species)
summarize(star.species, avg.height = mean(height, na.rm = T))

sample_n(star, 10)
sample_frac(star, 0.1)

star %>% 
  group_by(species) %>% 
  summarize(count =n(), mass = mean(mass, na.rm = T)) %>% 
  filter(count > 1)

