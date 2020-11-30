# Title     : Lecture 13
# Objective : Write and annotate code for lecture 13
# Created by: ThomasGrant
# Created on: 29/10/2020
require("fma")
tslm.airpass<-tslm(airpass~ season)
tslm.airpass
Arima(dowjones,order=c(0,1,0),include.mean=FALSE)
