# Title     : TODO
# Objective : TODO
# Created by: mac
# Created on: 2021/4/17
duplicate1 <- function() {
  library("DBI")
  library("RSQLite")
  library("dbplyr")
  library("RMySQL")
  library("dbplyr")

  con <- dbConnect(dbDriver("MySQL"), dbname = "testadr", username = "root", password = "lanlan1126", host = "127.0.0.1", port = 3306)
 
  Result <- dbReadTable(con, "demotest")
  #return value
  Result
}




