mtcars
my_data = mtcars
attach(mtcars)
scatterplot3d(mpg, cyl, hp)
View(my_data)
my_data[gear==4,2] <- 444
my_data[6,2]
getwd()

