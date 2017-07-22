#connect JDBC test

library(RJDBC)
jar.loc<-'C:\\Program Files (x86)\\MySQL\\Connector.J 5.1\\mysql-connector-java-5.1.41-bin.jar'
drv<-JDBC("com.mysql.jdbc.Driver",jar.loc,identifier.quote="`")
conn <-dbConnect(drv, "jdbc:mysql://localhost/appledaily", "root", "840421")

# dbDisconnect(conn)

dbWriteTable(conn,"iris",iris)
dbListTables(conn)
#dbWriteTable(conn,"iris")

a <- dbGetQuery(conn,"select `Sepal.Length`,`Sepal.Width` from iris where Species = 'setosa' ")
view(a)

dbListTables(conn)

if(dbExistsTable(conn,'iris')){
  dbRemoveTable(conn,'iris')
}

dbListTables(conn)
