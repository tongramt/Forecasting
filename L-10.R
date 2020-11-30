# Title     : Lecture 10
# Objective : Linear Regression
# Created by: ThomasGrant
# Created on: 19/10/2020
require('fma')
time <- seq(1:length(dowjones))
DJLinearModelWithTime <- lm(dowjones~time)
# ?lm
plot(time, dowjones, ylim = c(min(dowjones)-1, max(dowjones)+1))
par(new = TRUE, ann = FALSE) #Combines the two plots above and below
plot(time, DJLinearModelWithTime$fitted.values,type = 'l',col = 'red', lwd = 3, ylim = c(min(dowjones)-1, max(dowjones)+1))
