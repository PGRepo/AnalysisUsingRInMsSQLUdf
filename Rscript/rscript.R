library(RODBC)
connection <- odbcDriverConnect('driver={SQL Server};server=PRATIK-PC;database=test;trusted_connection=true')
data<-sqlQuery(connection, 'select * from test.dbo.WebData')
count<- table(data$BROWSING_LOCATION)
pdf(file="e://code//New folder//BrowsingLocation.pdf") 
barplot(count, main="Browsing Location", xlab="Categories", ylab="times")
dev.off()

