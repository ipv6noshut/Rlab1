getwd()
load('applenews.RData')


library(RJDBC)
#connect JDBC


jar.loc<-'C:\\Program Files (x86)\\MySQL\\Connector.J 5.1\\mysql-connector-java-5.1.41-bin.jar'
drv<-JDBC("com.mysql.jdbc.Driver",jar.loc,identifier.quote="`")
conn <-dbConnect(drv, "jdbc:mysql://localhost/appledaily", "root", "840421")

#到SQL建立表格

# create table applenews(
# content text,
# title   varchar(1000),
# dt      datetime,
# category varchar(100),
# view_cnt int
# )


dbWriteTable(conn, "applenews", applenews, append=TRUE,row.names=FALSE,overwrite=FALSE)


a <- dbGetQuery(conn,'select category,count(*) from applenedws group by category')
a <- dbGetQuery(conn,'select category,count(*) from applenews group by category order by 2 DESC;')
a<-  dbGetQuery(conn,'SELECT title, view_cnt FROM applenews ORDER BY view_cnt DESC limit 3;')
a<-  dbGetQuery(conn,"SELECT hour(dt),count(*) FROM applenews WHERE dt >='2016-04-14' AND dt <'2016-04-15'  group By hour(dt); ")
a

plot(a, type='l')

res <- dbGetQuery(conn,"SELECT category, count(*) FROM applenews group by category order by 2 desc")
res

names(res) = c('category','cnt')
res
?pie
pie(res$cnt,lables = res$category,clockwise = TRUE,init.angle=90)

dbDisconnect(conn)


