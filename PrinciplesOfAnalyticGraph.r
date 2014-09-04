pollution <- read.csv("data/avg25.csv", colClasses = c("numeric", "character", "factor", "numeric", "numeric"))
head(pollution)

// slide 2

summary(pollution@pm25)

// plots a graph of a boxplot

boxplox(pollution$25, col = "blue")

// plots a graph histogram

hist(pollustion$pm25, col = "green")

// use the rug function show what the actual observations were

rug(pollution$pm25)

// cont....
hist(pollution$pm25, col = "green", breaks = 100)

// for boxplot cont...

boxplot(pollution$pm25, col = "blue")
abline(h = 12)

// histogram cont.

hist(pollution$pm25, col = "green")

abline(v =12, lwd = 2)
abline(v = median(pollution$pm25), col = "magenta", lwd = 4)

// barplot example

barplot(table(pollution$pm25), col = "wheat", main = "Number of Counties in Each Region")

/// break at page 15 on slide 2
