#資料視覺化
data("anscombe")
anscombe
plot(y1~ x1,data=anscombe)
fit <- lm(y1 ~x1, data=anscombe)
fit
abline(fit,col="blue")
#-----------------------------------
#line chat
x <- seq(1,6)
y <- x
#1
plot(x,y,type = 'l')
#2
plot(x,y,type = 'n') #空圖
lines(x,y,type='l') #畫線


x <- seq(1,6)
y <- x
par(mfrow=c(2,4))  #2X4的方框

types=c("p","l","o","b","c","s","h",'n')
for(i in 1:length(types )){
  title=paste("type: ",types[i])
  plot(x, y, type="n", main=title)
  lines(x, y, type=types[i])
}
#pch lty 點和涂樣式
#遇到兩組以上的變數，則畫第二條線則要使用lines( )函數

taipei <- c(92.5,132.6,168.8,159.1,218.7)
tainan <- c(21.2, 30.6, 37.3, 84.6, 184.3)

plot(taipei,type='o',col="blue",ylim = c(0,110),xlab='mon',ylab = 'Rainfaill')
lines(tainan, type="o", pch=22, lty=2, col="red")

#----------------------------------------
#bar chart
download.file('https://github.com/ywchiu/rtibame/blob/master/data/house-prices.csv','house-prices.csv')
house <- read.csv('house-prices.csv')
View(house)




#------------------------------------------
#histogram  
#load('cdc(1).rdata')
view(cdc)
hist(cdc$weight , breaks = 50)
#breaks根據級距切幾根長條組數

head(sort(table(cdc$weight),decreasing = TRUE))
table(cdc$weight %% 10)  #發現大家都報整數之類

#-----------------------------------------
#pie chart甜甜圈圖
housePrice=read.csv('house-prices.csv',header=TRUE)
bedrooms =housePrice$BedroomsbedroomsTable=table(bedrooms)
labels=c("2 unit", "3 unit", "4 unit", "5 unit") #房間
pie(bedroomsTable,labels=labels,  #填進去圖內 
    col=rainbow(length(labels)),  #顏色 看單元有多少
    main="Pie Chart of Bedroom")  #標題

#SORT 
sorted_table <- sort(bedroomtable,decreasing = TRUE)

#

pie(sorted_table,labels=labels,  #填進去圖內 
    col=rainbow(length(labels)),  #顏色 看單元有多少
    main="Pie Chart of Bedroom",init.angle = 90,clockwise = TRUE)#標題

#----------------------------------------
#表示多維度時候
#scatter plot
plot(cdc$weight,cdc$wtdesire)


data(iris)
xlab= names(iris)[1]
ylab= names(iris)[2]

x<- iris[ ,1]
y<- iris[ ,3]
sepecies <-iris[ ,5]
plot(x,y,col=sepecies)

setosa=which(iris$Species=="setosa")
versicolor =which(iris$Species=="versicolor")
points(iris[setosa,1],iris[setosa,3],col="green")

#-----------------
#最小平方法圖 lm(x~y) 搭配abline(lm(x~y))
#可以判斷出離群值



#----------------
# Mosaic Chart
#Mosaic plot常常用来展示Categorical data(分类数据)(关于不同的数据类别
smoker_gender <-table(cdc$gender,cdc$smoke100)
mosaicplot(smoker_gender)



#-------------------
#BOX  黑色線維中位數   最上下的為離群值 找出離群直!
