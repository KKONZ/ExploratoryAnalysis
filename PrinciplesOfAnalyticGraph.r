pollution <- read.csv("data/avg25.csv", colClasses = c("numeric", "character", "factor", "numeric", "numeric"))
head(pollution)

// slide 2

summary(pollution@pm25)
