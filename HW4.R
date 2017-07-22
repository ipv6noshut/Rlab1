download.file('https://github.com/ywchiu/rtibame/raw/master/Data/purchase.csv', 'purchase.csv')

getwd()

str(purchase)
library(dplyr)

purchase <- read_csv("~/purchase.csv", col_types = cols(Time = col_datetime(format = "%Y-%m-%d %H:%M:%S")))

qty_byH <- purchase %>% mutate(hour = format(Time, '%H')) %>% select(Quantity, hour) %>% group_by(hour) %>% summarise(purchase_sum = sum(Quantity)) 

plot(qty_byH, type = 'b')

View(purchase)

## SELECT user, sum(quantity * price) FROM purchase GROUP BY user ORDER BY sum(quantity * price) DESC LIMIT 3

purchase %>% select(User, Quantity, Price) %>% mutate(purchase_amount = Quantity * Price) %>% group_by(User) %>% summarise(purchase_sum = sum(purchase_amount)) %>% arrange(desc(purchase_sum)) %>% head(3)

UserRank <- purchase %>% select(User, Quantity, Price) %>% mutate(purchase_amount = Quantity * Price) %>% group_by(User) %>% summarise(purchase_sum = sum(purchase_amount)) %>% arrange(desc(purchase_sum)) %>% head(10)

barplot(height = UserRank$purchase_sum, names.arg = UserRank$User, col = 'red')