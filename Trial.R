library(xts)

library(lubridate)

stock <- read.csv("C:/Kaggle/Nifty 50/archive/ADANIPORTS.csv",stringsAsFactors = FALSE)

stock1 <- stock[,c(1,5)]
class(stock1$Date)

stock1$Date <- as.Date(as.character(stock1$Date), format='%y/%m%d')


adani<-as.Date(stock1$Date, "%y/%m/%d")


dmy(stock1$Date)


plot(stock1$Open~stock$Date,type="l",col="red", axes=FALSE)
