library(dplyr)

# R Version
head(applenews[applenews$category =='娛樂', ])
# Dplyr Version
head(filter(applenews,category =='娛樂'))


head(filter(applenews,category =='娛樂'& view_cnt >=1000))

head(filter(applenews, category == '娛樂' | view_cnt >= 1000))    

head(filter(applenews,category %in% c('娛樂','社會')))


#用欄位做選取
#R version
head(applenews[    ,  c('category', 'view_cnt') ])
#dplyr
head(select(applenews,category,view_cnt))

library(magrittr)
#%>% THEN  (MARGRITTR)
applenews  %>% filter(category == '社會') %>% select(category, view_cnt) %>% head()

# R
#  R Version
tmp <- applenews[applenews$category == '社會',   c('category', 'view_cnt')]
tmp[order(tmp$view_cnt),]
#use Arrange
applenews %>% select(category,view_cnt) %>% filter(category =='社會') %>% arrange(view_cnt) %>% head
applenews %>% select(category,view_cnt) %>% filter(category =='社會') %>% arrange(desc(view_cnt)) %>% head


#新增欄位
freqsum <- applenews %>% select(view_cnt) %>% sum()
applenews %>% select(view_cnt) %>% mutate(portion= view_cnt/freqsum)%>% head()
?mutate
