# Title     : Quiz 89
# Objective : To get 100%
# Created by: ThomasGrant
# Created on: 18/11/2020
tslm.airpass<-tslm(airpass~ trend )

tslm.airpass2<-tslm(airpass~ trend + season)
summary(tslm.airpass2)
tslm.airpass<-tslm(airpass~ season)
summary(tslm.airpass)