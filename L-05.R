# Title     : Lecture 5
# Objective : Write and annotate Code for Lecture 5
# Created by: ThomasGrant
# Created on: 09/11/2020
require('fma')
dowjonesHWDES <- HoltWinters(dowjones, gamma = FALSE)
plot(forecast(dowjonesHWDES, n.ahead = 12))
# Thisn code will calculate and plot the forecast of the dowjones data
# using the Double Exponential Smoothing Algorithm (DES)
# Own attempt to use DES
airpassHWDES <- HoltWinters(airpass, gamma = FALSE)
plot(forecast(airpassHWDES, n.ahead=60))
# Comparison of forecasting algorithms. When choosing between algorithms
# pick the one which minimises square error.
HoltWinters(dowjones, gamma = FALSE)$SSE #11.4653
HoltWinters(dowjones,beta = FALSE, gamma = FALSE)$SSE #15.22953
