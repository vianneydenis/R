getwd()
rm(list=ls())
data(rairuoho)
rairuoho

rairuoho$treatment<-ifelse(rairuoho$treatment=='nutrient','enriched','water')
rairuoho$row<-NULL
rairuoho$column<-NULL
rairuoho

rairuoho_short<-rairuoho%>%pivot_longer(day3:day8,names_to = "factor", values_to= "levels")
rairuoho_short

library(dplyr)
library(tidyr)
rairuoho_short$spatial_coordinates<-paste(rairuoho_short$spatial1, rairuoho$spatial2, sep="_")
rairuoho_short
