a <-3 
b <-2
c <- a/b

numer <-17.8
char <- "Hello World"
logic <- TRUE 

class(logic)


card_length <-3 
card_with <- "5 inches"
card_length * card_with

card_with <- 5
card_length * card_with

RRP <- 35.99
Exchange <- 31.74
NTD <- RRP * Exchange
NTD

#vector
height_vec <- c(180,169,173)
name_vec <- c("brian",'Toby','Sherry') #單雙引號皆可

height_vec[1]  #R語言 array from 1
name_vec[3]

x <- c(1,2,3,7)
y <- c(2,3,5,1)

x+y 
x-y
x*y
x/y

height_vec/100
# 相等於 height_vec / c(100,100,100)

x <- 1:20
x

y <- seq(1,20)
y
#查詢seq函數  ?seq    By=隔多少 by相隔
z <- seq(from=1, to=20, by=2)
# =  z<- seq(1,20,2)

seq(1,10, length.out = 3)

x <- c(1,2,3,5,6)
sum(x)
mean(x) #算術平均數
summary(x)

?mean

y <- c(1,2,3, NA)  #NA 空值
sum(y, na.rm=TRUE)

names(height_vec) <- name_vec  #帶查詢巡

height_vec

height_vec[height_vec >160 & height_vec <170]
################################

BMI_Hieght <- c(1.8,1.69,1.73)#身高
BMI_weight  <- c(73,87,43)#體重

BMI <- BMI_weight/(BMI_Hieght*BMI_Hieght) #BMI計算式子
name_bmi <-c("Brian","Toby","Sherry")  #將人名存到name_bmi
names(BMI) <-name_bmi    #指定人名到相對的BMI向量位置
BMI #顯示BMI結果
BMI<18.5 | BMI>24.5
name_bmi[BMI<18.5 | BMI>24.5]  #顯示判斷後答案 人名顯示
#get Tobby
BMI[2]
BMI[c(FALSE,TRUE,FALSE)]
normal <- name_bmi[BMI>18.5&BMI<24.5]
normal
#正常結果

#################
老師的答案
#height_vec <- c(180,169,173)
#weight_vec <-c(73,87,43)
#bmi_vec <- height_vec / (height_vec/100)^2
#names(bmi_vec)<-name_vec
#bmi_vec[bmi_vec <18.5|bmi>24]
#