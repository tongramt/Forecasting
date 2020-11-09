# Title     : Lecture 7
# Objective : Write and annotate Code for Lecture 7
# Created by: ThomasGrant
# Created on: 09/11/2020
require('fma')
plot(forecast(HoltWinters(beer, seasonal = 'additive'), h = 5*12))
# This is the Seasonal Holt Winters additive Algorithm SHW+
# It calculates the forecasts for the beer dataset using level, trend and seasonal components.
# n.ahead is calculated by multiplying the amount of cycles you wish to see
# additive seasonal is the default seasonal setting
# If your data does not have it built in that it has a period of 12 months like the beer data does
# You can create a period by setting freq=x
plot(forecast(HoltWinters(beer, seasonal = 'multiplicative'), h = 5*12))
beerSHWaddSSE <- HoltWinters(beer, seasonal = 'additive')$SSE
beerSHWxSSE <- HoltWinters(beer, seasonal = 'multiplicative')$SSE
beerSHWaddSSE
beerSHWxSSE
# The algorithm which provides you with the smallest SSE is the one you shouold choose
plot (HoltWinters(beer, seasonal = 'multiplicative')$fitted)
# This code breaks down the SHWx Algorithm into its level, trend, and seasonal components
# by only showing the fitted values you dont get the noise component
