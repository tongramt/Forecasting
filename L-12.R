# Title     : Lecture 12
# Objective : Write and annotate code for lecture 12
# Created by: ThomasGrant
# Created on: 23/10/2020
require("fma")
# How to simulate an autoregressive model using values for phi 1 and 2 in the c function.
tsdisplay(arima.sim(n=63, list(ar = c(0.8897)), sd = sqrt(0.1796)))
tsdisplay(arima.sim(n=63, list(ar = c(0.8897,-0.4858)), sd = sqrt(0.1796)))

