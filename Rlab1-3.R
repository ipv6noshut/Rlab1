#list 可包含不同的資料型態

item <-list(thing="hat",size="8.25")
item

test <-list(name="Toby",score=c(87,57,72))
test$score
test$score[2]
#取出沒有名子的list清單
li <- list(c(3,5,12),c(2,4,5,8,10))
li
li[[1]]

#類似迴圈 取第一次加總後 再跑第二次再加總
lapply(li,sum)
#等同上
lapply(li, function(e)  sum(e) )
lapply(li, function(e)  mean(e) ) #平均
lapply(li, function(e)  e(1) ) #取第一個元素

x <-5 
if(x<3){
  print("x>3");
}else{
  print("x=3");
}

#跟一般語言較像
x <-5 
if(x<3){
  print("x>3");
}else if(x==3){
  print("x==3");
}else{
  print("x<3")
}


#迴圈
for(i in 1:10){
  print(i);
}
#1~100加總
s = 0
for(i in 1:100){
  s=s + i
}
s
#盡量用內建函數 效能才快 不要用迴圈 盡量避免
sum(1:100)

x <-c("sunny","rainy","cloudy","rainy","cloudy")
length(x)

for(i in 1:length(x)){
  print(x[i])
}

#for(i in seq_along(x))
#for(letter in x)


#當不滿足WHILE定義的條件 才會跳出迴圈
s = 0 
cnt = 0;
while(cnt <= 100){
  s= s+cnt;
  cnt = cnt +1;
}
s

#範例 產生多筆頁面連結
?paste
#不要有空格和空格 相黏合併
paste('Hello','world')
paste0('Hello','world')
paste('Hello','world',sep="")

# http://www.appledaily.com.tw/realtimenews/section/new/
url <- 'http://www.appledaily.com.tw/realtimenews/section/new/'
for(i in seq(1,10)){
  print(paste0(url,i))
}

# JAVA: def function(qrg1):
# return arg1 +3

f = function(a){
  a +3 
}
f(5)

f2 <- function(a, b=2 ){
  a +b 
}
f2(3,5)
f2(3)

f3 <- function(a,b=2){
  a+b*5
}

f3(3)
#指定參數名稱會丟進去和覆蓋
f3(b=3 ,a=2)

head(iris)
?head
#取得前三個就好
head(iris,n = 3)
#lazy function!
f = function(a,b){
  a *2
}
f(3)
#沒傳會錯誤!
f = function(a,b){
  print(a+b)
}
f(3)


#計算文章詞彙頻率


