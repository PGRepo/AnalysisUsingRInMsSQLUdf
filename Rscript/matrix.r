library(RODBC)
connection <- odbcDriverConnect('driver={SQL Server};server=PRATIK-PC;database=test;trusted_connection=true')
data<-sqlQuery(connection, 'select * from test.dbo.WebData')
pdf(file="e://code//output//matrix.pdf")
pairs(~TIME_ON_SITE+SEARCH_VISIT+BOUNCE_RATE+LOAD_TIME,data=mydata, 
      main="Simple Scatterplot Matrix Example")
dev.off()
