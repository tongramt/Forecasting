# Title     : Lecture 8
# Objective : Write and annotate Code for Lecture 8
# Created by: ThomasGrant
# Lecture: 15/11/2020
require('fma')
?pollution
tsdisplay(pollution)
# The function tsdiplay will plot the values for the pollution dataset. When plotted it is obvious that the
# time series contains a trend.
tsdisplay(diff(pollution))
# Using the function diff within the tsdisplay function differentiates the pollution dataset.
# This differentiation removes the trend componenent from the time series.
HoltWinters(pollution, seasonal = 'additive')
# HoltWinters(pollution, seasonal = 'multiplicative')
# this command returns an error as HWSx cannot find the optimal values for alpha, beta and gamma.
# to combat this we select the start point for the omptim.start function as shown below
HoltWinters(pollution, seasonal = 'multiplicative', optim.start = c(alpha = 0.5, beta = 0.5, gamma = 0.5))
# Using gg at the start ofa graph uses pre determined parameters to hopefully make the time series
# more legible
ggtsdisplay(diff(airpass))