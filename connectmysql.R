# Title     : TODO
# Objective : TODO
# Created by: mac
# Created on: 2021/4/15

#install.packages("RMariaDB")
#install.packages("DBI")
#install.packages("odbc")
#install.packages("RODBC")
#install.packages("RMySQL")
install.packages("RSQLite")
library(RSQLite)
install.packages("dbplyr")
library("RMySQL")
library("dbplyr")
con <- dbConnect(dbDriver("MySQL"),dbname="testadr",username="root", password="lanlan1126", host="127.0.0.1", port=3306)
dbReadTable(con, "student")
dbWriteTable(con, "arrests1",USArrests,overwrite=T)
USArrests <- read.xlsx("/Users/mac/Desktop/SMQTEST.xlsx",sheetName = 1)
USArrests <- as.data.frame(USArrests)
dbWriteTable(con,"arrests",USArrests,overwrite=T)
conexao <- dbConnect(RMySQL::MySQL(),
                     dbname = "testadr",
                     host = "localhost",
                     port = 3306,
                     user = "root",
                     password = "lanlan1126")
rs <- dbSendQuery(conexao, "SELECT * FROM student")
d1 <- dbFetch(rs)


library("DBI")
library("xlsx")





library("RODBC")
channel <- odbcConnect("myodbca",uid = "root",pwd = "lanlan1126")
sqlTables(channel)
sqlSave(channel,USArrests,tablename = "stock_table",rownames = T)

conn <- dbConnect(MySQL(), dbname = "testadr", username="root", password="lanlan1126", host="127.0.0.1", port=3306)

library(DBI)
library(odbc)
sort(unique(odbcListDrivers()[[1]]))
con <- dbConnect(odbc(), "DSN name")