#list �i�]�t���P����ƫ��A

item <-list(thing="hat",size="8.25")
item

test <-list(name="Toby",score=c(87,57,72))
test$score
test$score[2]
#���X�S���W�l��list�M��
li <- list(c(3,5,12),c(2,4,5,8,10))
li
li[[1]]

#�����j�� ���Ĥ@���[�`�� �A�]�ĤG���A�[�`
lapply(li,sum)
#���P�W
lapply(li, function(e)  sum(e) )
lapply(li, function(e)  mean(e) ) #����
lapply(li, function(e)  e(1) ) #���Ĥ@�Ӥ���

x <-5 
if(x<3){
  print("x>3");
}else{
  print("x=3");
}

#��@��y������
x <-5 
if(x<3){
  print("x>3");
}else if(x==3){
  print("x==3");
}else{
  print("x<3")
}


#�j��
for(i in 1:10){
  print(i);
}
#1~100�[�`
s = 0
for(i in 1:100){
  s=s + i
}
s
#�ɶq�Τ��ب�� �į�~�� ���n�ΰj�� �ɶq�קK
sum(1:100)

x <-c("sunny","rainy","cloudy","rainy","cloudy")
length(x)

for(i in 1:length(x)){
  print(x[i])
}

#for(i in seq_along(x))
#for(letter in x)


#��������WHILE�w�q������ �~�|���X�j��
s = 0 
cnt = 0;
while(cnt <= 100){
  s= s+cnt;
  cnt = cnt +1;
}
s

#�d�� ���ͦh�������s��
?paste
#���n���Ů�M�Ů� ���H�X��
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
#���w�ѼƦW�ٷ|��i�h�M�л\
f3(b=3 ,a=2)

head(iris)
?head
#���o�e�T�ӴN�n
head(iris,n = 3)
#lazy function!
f = function(a,b){
  a *2
}
f(3)
#�S�Ƿ|���~!
f = function(a,b){
  print(a+b)
}
f(3)


#�p��峹���J�W�v

