# Title     : Lecture 3
# Objective : Write and annotate Code for Lecture 2
# Created by: ThomasGrant
# Created on: 09/11/2020
install.packages('fma')
require('fma')
acf(beer, 24)
?acf
# Shows the different correlation of results on the y axis
# and the lag of observations on the x axis
# The correlation is perfect at lag 0 and peaks when either
# perfectly in or out of series based on the period of the cycle.
# The function tells you the period of the data automatically in the graph
plot(airpass-mean(airpass), lwd = '3')
lines(lag(airpass-mean(airpass),12), col = 'red', lwd = 3)
acf(ts(airpass, frequency = 1))
