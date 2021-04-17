# Title     : TODO
# Objective : TODO
# Created by: mac
# Created on: 2021/4/15

library("plyr")
install.packages("XML")
library("XML")
mydata <- xmlToDataFrame("/Users/mac/FAERdata/testfaers_xml_2020Q4/XML/1_ADR20Q4.xml")
view(mydata)