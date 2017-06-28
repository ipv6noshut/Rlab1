##martix


matrix(1:9,nrow=3)
#三列 row橫的
matrix(1:9,nrow=3 ,byrow=TRUE) #列為優先填滿

kevin <-c(85,73)
marry <-c(72,64)
jerry <-c(59,66)
c(kevin,marry,jerry)

matrix(c(kevin,marry,jerry),nrow=3)
matrix(c(kevin,marry,jerry),nrow=3,byrow = TRUE)

mat <-matrix(c(kevin,marry,jerry),nrow=3,byrow = TRUE)
mat

#改直的
colnames(mat) <- c('firest','second')
mat
#橫的
row.names(mat) <- c('kevin','marry','jerry') #新增欄位名稱
mat

mat2 <- matrix(c(kevin, marry, jerry), nrow=3, byrow=TRUE, dimnames = list(c('kevin', 'marry', 'jerry'), c('first', 'second')))
mat2
#新增列數值學生資料
mat3 <-rbind(mat2,c(78,63))
mat3
新增行名稱
rownames(mat3)[nrow(mat3)] <-'sam'
mat3

#新增考試分數
mat4 <-cbind((mat2),c(82,77,70))
colnames(mat4)[ncol(mat4)]<-'third'
mat4

#加總
rowSums(mat2)
colSums(mat2)


#矩陣宣告
m1 <-matrix(1:4, byrow=TRUE,nrow=2)
m2 <-matrix(5:8, byrow=TRUE,nrow=2)
m1 + m2

m1 %*% m2

#練習題 取學生成績
kevin <-c(85,73)
marry <-c(72,64)
jerry <-c(59,66)
c(kevin,marry,jerry)

mat2 <- matrix(c(kevin, marry, jerry), nrow=3, byrow=TRUE, dimnames = list(c('kevin', 'marry', 'jerry'), c('first', 'second')))
mat2

#method1
#第一欄先拿出來再拿第二欄
score <- mat2[ , 1]*0.4 + mat2[ , 2]*0.6
#合併
mat2 <- cbind(mat,score)
mat2


################
#factor  有限的類別資訊比較

weather <- c('sunny','raniy','cloudy','rainny','cloudy')
class(weather)  #字串向量

#轉換為類別資料(FACTOR)
weather_category<-factor(weather)
weather_category

levels(weather_category)


#產生可比較類別資訊
temperature <-c("Low","High","High",'Medium','Low','Medium')
#order開始排序  H>M>L
temperature_category <- factor(temperature,order=TRUE,levels=c("Low","Medium","High"))
temperature
temperature_category[3]>temperature_category[1]


##################
#dataframe  結構化資料 數據!
#允許不同類型數據表示在上面 不像是陣列之類需要同一個
days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE,TRUE,FALSE,FALSE,TRUE)

#使用VECTOR建立資料框架
df <-data.frame(days,temp,rain)
df
#資料型態取最大公約數 會一樣
class(df)
#檢視架構
str(df)
#檢視摘要 自動計算數值 統計幾個
summary(df)

#iris 資料集
data(iris)
class(iris)
View(iris)

#PERAL花瓣  SEPAL花萼 (iris內建資料練習)
#前幾筆資料
head(iris)
#後
tail(iris)
str(iris)

#取得指定列 行 的部分資料
#取前三列
iris[1:3,]
#前三列第一行
iris[1:3,1]
#指定名稱取數值 花萼長度
iris[1:3,"Sepal.Length"]
#前兩行
iris[,1:2]
#取得特定向量
iris$"Sepal.Length"


#取前五筆資料 包含ELNGTH WIDTH
five.Sepal.iris<-iris[1:5,c("Sepal.Length","Sepal.Width")]
five.Sepal.iris

setosa.data <-iris[iris$Species=="setosa",1:5]
setosa.data

which(iris$Species=="setosa")

#排序
#decreasing 大到小

sort(iris$Sepal.Length)
order(iris$Sepal.Length)
#排序後傳回去原資料
iris[order(iris$Sepal.Length,decreasing = TRUE),]


#實際範例 股票資料  CSV讀取後
head(X2330_TW)
class(X2330_TW)
str(X2330_TW)


tw2330 <- X2330_TW[X2330_TW$`Adj Close` > 0 , ]
min(tw2330$`Adj Close`,na.rm = TRUE)  
#na.rm 把遺失的資料拿掉  刪除遺失數值 
#最大的收盤價
max(tw2330$`Adj Close`,na.rm=TRUE)


hist(tw2330$`Adj Close`)  #圖
boxplot(tw2330$`Adj Close`) #圖
head(tw2330$`Adj Close`)

#TW2330取收盤價後order排序餵食回去tw2330資料取head(前面幾個)
head(tw2330[order(tw2330$`Adj Close`), ])

head(tw2330[order(tw2330$`Adj Close`, decreasing = TRUE), ])

plot(tw2330$Date, tw2330$`Adj Close`)


