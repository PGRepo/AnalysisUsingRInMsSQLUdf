library(RODBC)
connection <- odbcDriverConnect('driver={SQL Server};server=PRATIK-PC;database=test;trusted_connection=true')
data<-sqlQuery(connection, 'select * from test.dbo.WEBSITEDATA')
library(scatterplot3d) 
attach(data) 
pdf(file="e://code//output//3dcolornew.pdf")
scatterplot3d(LOAD_TIME, BOUNCE_RATE, TIME_ON_SITE, pch=16, highlight.3d=TRUE,
type="h", main="3D Scatterplot")
dev.off()
