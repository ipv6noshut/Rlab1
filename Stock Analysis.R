#First : install quantmod pakages
# https://finance.yahoo.com/quote/2330.TW/history?p=2330.TW  
#stock time from max to now
#找出股票資料(stock_data)中日期
#大於2017年一月到六月間台積電最高收盤價(close)
library(quantmod)
#讀取csv
X2330_TW <- read.csv("D:/MyDocuments/Desktop/2330_TW.csv")
#檢視csv
View(X2330_TW)

class(X2330_TW)
str(X2330_TW)

#Adj Close ->收盤價
#將台積電股票收盤價>0存進tw2330內
tw2330<-X2330_TW[X2330_TW$Adj.Close>0 , ]
tw2330
#檢視最小值 rm.na去除不存在的空值
min(tw2330$Adj.Close,na.rm = TRUE)
max(tw2330$Adj.Close,na.rm = TRUE)

#Histogram 直方圖
hist(tw2330$Adj.Close)
#boxplot 盒鬚圖
boxplot(tw2330$Adj.Close)


head(tw2330[order(tw2330$Adj.Close,decreasing = TRUE),])

#長條圖
plot(tw2330$Date,tw2330$Adj.Close)
