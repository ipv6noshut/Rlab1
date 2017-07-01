#作業一
#請先從Google Drive下載不動產實價登錄網的資料:
#  請用R整理、轉換以下實價登錄資訊：
#將資料讀進一名為lvr_data的Data Frame
#計算大安區所有成交物件的的總價(total_price)總合以及平均
#列舉中山區所有成交物件總價(total_price)前三名的地址(address)以及(total_price)，並將結果存放至一名為zhongshan的DataFrame結構中

#import dataset.csv
lvr_prices_mac
class(lvr_prices_mac) #check datatype
#transfer datatype to lvr_data
lvr_data <- as.data.frame(lvr_prices_mac)
#check
class(lvr_data)

lvr_data_dan<-lvr_data[lvr_data$area=='大安區', ]
class(lvr_data_dan)
#將大安物件成交總價存到dan_total_price
dan_total_price<-lvr_data_dan$total_price
dan_total_price

#轉換成number的資料型態後加總  去除NA值
sum(as.numeric(dan_total_price),na.rm = TRUE)
mean(as.numeric(dan_total_price), na.rm = TRUE)

#列舉中山區所有成交物件總價(total_price)前三名的地址(address)以及(total_price)，
#並將結果存放至一名為zhongshan的DataFrame結構中

lvr_data_zhongshan<-lvr_data[(lvr_data$area=='中山區' ), ]
#排序總價大到小
order(lvr_data_zhongshan$total_price,decreasing = TRUE)

#取出排序後有地址(address)以及(total_price)
lvr_data_zhongshan[order(lvr_data_zhongshan$total_price,decreasing = TRUE),c('address','total_price')]

#取出前三名
head(lvr_data_zhongshan[order(lvr_data_zhongshan$total_price,decreasing = TRUE),c('address','total_price')], 3)

#存到zhongshan
zhongshan<-head(lvr_data_zhongshan[order(lvr_data_zhongshan$total_price,decreasing = TRUE),c('address','total_price')], 3)
#檢查
class(zhongshan)
