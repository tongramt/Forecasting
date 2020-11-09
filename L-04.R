# Title     : Lecture 4
# Objective : Write and annotate Code for Lecture 4
# Created by: ThomasGrant
# Lecture: 05/10/2020
require('fma')
HoltWinters(dowjones, alpha = 0.5,gamma = FALSE,beta = FALSE)
# provides you witht the numerical info from the HW algorithm
plot(forecast(HoltWinters(dowjones, alpha = 0.5,gamma = FALSE,beta = FALSE), n.ahead = 5))
# Plots the HW algorithm with a certain number of predicions and CI's of 95% and 99%
HoltWinters(dowjones,gamma = FALSE,beta = FALSE)
# Automatically uses the alpha which minimises the SSE

