# Title     : Lecture 11
# Objective : Generalised Linear Modelling
# Created by: ThomasGrant
# Created on: 22/10/2020
require('fma')

carbohydrate=c(33,40,37,27,30,43,34,48,30,38,50,51,30,36,41,42,46,24,35,37) # response vector
age=c(33,47,49,35,46,52,62,23,32,42,31,61,63,40,50,64,56,61,48,28)
weight=c(100,92,135,144,140,101,95,101,98,105,108,85,130,127,109,107,117,100,118,102)
protein=c(14,15,18,12,15,15,14,17,15,14,17,19,19,20,15,16,18,13,18,14)
res.lm <- lm(carbohydrate~age +weight+ protein)
summary(res.lm)
res.glm <- glm(carbohydrate~age +weight+ protein, family = 'gaussian')
summary(res.glm)
# When using the glm function you have to specify what distribution you will be using for
require(fma)
Feb <- rep(c(0,1,0,0,0,0,0,0,0,0,0,0), length.out=length(beer) )
Mar <- rep(c(0,0,1,0,0,0,0,0,0,0,0,0), length.out=length(beer) )
Apr <- rep(c(0,0,0,1,0,0,0,0,0,0,0,0), length.out=length(beer) )
May <- rep(c(0,0,0,0,1,0,0,0,0,0,0,0), length.out=length(beer) )
Jun <- rep(c(0,0,0,0,0,1,0,0,0,0,0,0), length.out=length(beer) )
Jul <- rep(c(0,0,0,0,0,0,1,0,0,0,0,0), length.out=length(beer) )
Aug <- rep(c(0,0,0,0,0,0,0,1,0,0,0,0), length.out=length(beer) )
Sep <- rep(c(0,0,0,0,0,0,0,0,1,0,0,0), length.out=length(beer) )
Oct <- rep(c(0,0,0,0,0,0,0,0,0,1,0,0), length.out=length(beer) )
Nov <- rep(c(0,0,0,0,0,0,0,0,0,0,1,0), length.out=length(beer) )
Dec <- rep(c(0,0,0,0,0,0,0,0,0,0,0,1), length.out=length(beer) )
beerLM <- lm(beer~ Feb + Mar + Apr + May + Jun + Jul + Aug + Sep + +Oct + Nov + Dec)
summary(beerLM)
beerTSLM <- tslm(beer~season)
summary((beerTSLM))
plot(forecast(beerTSLM, h = 24))
airpassTSLM <- tslm(airpass~trend+season)
plot(forecast(airpassTSLM, h = 24))
# plot(forecast(airpassTSLM, h = 240)) the confidence interval does not expand astime passes
AR1 <- tsdisplay(arima.sim(n =63, list(ar = c(0.8897)), sd =  sqrt(0.1796)))
AR2 <- tsdisplay(arima.sim(n =63, list(ar = c(0.8897, -0.4858)), sd =  sqrt(0.1796)))
AR1
AR2