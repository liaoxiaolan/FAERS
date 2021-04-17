# Title     : TODO
# Objective : TODO
# Created by: mac
# Created on: 2021/4/17
 dataimport <- function(tableName,filename, ...) {
  library("DBI")
  library("RSQLite")
  install.packages("dbplyr")
  library("RMySQL")
  library("dbplyr")

  con <- dbConnect(dbDriver("MySQL"), dbname = "testadr", username = "root", password = "lanlan1126", host = "127.0.0.1", port = 3306)

  #USArrests <- read.xlsx("/Users/mac/Desktop/SMQTEST.xlsx", sheetName = 1)
  USArrests <- read.table(filename,sep = "$",header = T,fill=TRUE)

  USArrests <- as.data.frame(USArrests)
  dbWriteTable(con, tableName, USArrests, overwrite = T)
}