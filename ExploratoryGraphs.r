pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric","charater", "factor", 
              "numeric", "numeric"))
head(pollution)


# Five number Summary
summary(pollution$pm25)

# Boxplot(pollution$pm25, col = ("blue"))

# histogram

hist(pollution$pm25, col=("green"))
rug(pollution$pm25)

# add a break to get the actual number representation for the observations

hist(pollution$pm25, col=("green", breaks = 100))
rug(pollution$pm25)

boxplot(pollution$pm25, col = "blue")
abline(h=12)

hist(pollution$pm25, col = "green")
abline(v = 12, lwd = 2)
abline(v = median(pollution$pm25), col = "magenta", lwd = 4)

# adds a title to the graph

barplot(table(pollution$region), col = "wheat", main = "Number of Counties in Each Region")

#breaks the information into multiple graphs

boxplot(pm25 ~ region, data = pollution, col = "red")

# using multiple histograms

par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == "east")$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")

# use a scatterplot

with(pollution, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)

# add color
with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)

# use multiple scatterplots
par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))
with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))

# PLOTTING SYSTEMS IN R####
library(datasets)
data(cars)
with(cars, plot(seed, dist))

# Lattice plot

library(lattice)
state <- data.frame(state.x77, region=state.region)
xyplot(LIfe.ex ~ Income | region, data = state, layout = c(4, 1))

# ggplot2 plot
library(ggplot2)
data(mpg)
# x axis = ,2 y axis = displ or1,
qplot(displ, hwy, data = mpg)

# THE BASE PLOTTYING SYSTEM IN R######

library(datasets)
hist(airquality$Ozone)  ## Draw a new plot

library(datasets)
with(airquality, plot(Wind, Ozone))

library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")

