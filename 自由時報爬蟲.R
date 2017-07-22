#自由時報爬蟲
library(rvest)
library(magrittr)
li <- read_html('http://news.ltn.com.tw/list/breakingnews') %>% html_nodes('.tit')

?trimws()  #Remove Leading/Trailing Whitespace

ltn_news <- data.frame()

for(news in li){
    dt    <-  news %>% html_nodes('span') %>% html_text() %>% trimws() #去除空白
    title <-  news %>% html_nodes('p') %>% html_text() %>% trimws()
    link  <- news %>% html_attr('href')  
    res <- data.frame(dt=dt ,title=title ,link=link , stringsAsFactors = FALSE   )
    ltn_news <-rbind(ltn_news,res)
}

ltn_news