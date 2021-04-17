# Title     : TODO
# Objective : TODO
# Created by: mac
# Created on: 2021/4/17

dataimport("demotest", "/Users/mac/FAERdata/faers_ascii_2020Q4/ASCII/DEMO20Q4.txt")

dataimport <- function(tableName, filename,...) {
  library("DBI")
  library("RSQLite")
  library("dbplyr")
  library("RMySQL")
  library("dbplyr")

  con <- dbConnect(dbDriver("MySQL"), dbname = "testadr", username = "root", password = "lanlan1126", host = "127.0.0.1", port = 3306)

  USArrests <- read.table(filename, sep = "$", header = T, fill = TRUE)

  USArrests <- as.data.frame(USArrests)
  dbWriteTable(con, tableName, USArrests, overwrite = T)

  #return value
  #USArrests
}





