library(fpp2)

stock <- read.csv("C:/Kaggle/Nifty 50/archive/ADANIPORTS.csv",stringsAsFactors = FALSE)

stock1 <- stock[,c(1,5)]

data1 <- ts(stock1[,2],start = c(2007,11,27),frequency = 365)

autoplot(data1)

difdata1 <- diff(data1)

autoplot(difdata1)

ggseasonplot(difdata1)+ 
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE))

ggsubseriesplot(difdata1)+
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE))

autoplot(difdata1)

ar1 <- snaive(difdata1)

print(summary(ar1))

autoplot(data1)

checkresiduals(ar1)