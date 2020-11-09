# Title     : Lecture 2
# Objective : Write and annotate Code for Lecture 2
# Created by: ThomasGrant
# Created on: 09/11/2020
# The code for Lecture 2 of Forecasting
install.packages("fma")
require(fma)
beer
install.packages("forecast")
plot(beer)
seasonplot(beer)
seasonplot(airpass)
mink
# seasonplot(mink) mink is not stored
# with monthly data so sesonal will not work
plot(mink, freq = 10)
tsdisplay(beer)
# tsdisplay(shows three graphs. The plot of the data,
# the ACF or auto-correlated function and the PACF or partial auto correlation function.
plot(decompose(airpass))
# plot(decompose()) breaks down the data into the different factors which make it up.
# It is important to remember that not all of the graphs presented are to the same
# scale and the trend could be very minor but look more pronounced if the Y axis is an
# extremely small range of values.
# The bottom three graphs added together provide you with the top graph.
# This is known as an additive decomposition.
# The default is additive but you can use the multiplicative model by writing the code
# plot(decompose(,type="multiplicative")



