library(rvest)

udn<-read_html('https://udn.com/news/breaknews/1') %>% html_nodes('dt')

title <- udn %>% html_nodes('h2 a') %>% html_text()  
link  <- udn %>% html_nodes('h2 a') %>% html_attr('href')
dt    <-udn %>% html_nodes('.info .dt') %>%  html_text()
cat  <-udn %>% html_nodes('.cate') %>% html_text()
view_cnt <-udn %>% html_nodes('.view') %>% html_text()

udn_news <-data.frame(title=title ,link=link ,dt=dt,cat=cat  , view_cnt=view_cnt )
View(udn_news)
