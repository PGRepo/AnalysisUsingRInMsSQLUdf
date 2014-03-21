library(RODBC)
connection <- odbcDriverConnect('driver={SQL Server};server=PRATIK-PC;database=test;trusted_connection=true')
data<-sqlQuery(connection, 'select NAME,RANK,BOUNCE_RATE,TIME_ON_SITE from test.dbo.WEBSITEDATA')
  data