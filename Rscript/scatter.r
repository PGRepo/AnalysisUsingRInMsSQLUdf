
library(RODBC)
connection <- odbcDriverConnect('driver={SQL Server};server=PRATIK-PC;database=test;trusted_connection=true')
data<-sqlQuery(connection, 'select * from test.dbo.WebData')
plot(LOAD_TIME, TIME_ON_SITE, main="Scatter Plot Example", xlab="load time", ylab="time on site", pch= 19)
abline(lm(TIME_ON_SITE~LOAD_TIME), col="red")
lines(lowess(LOAD_TIME, TIME_ON_SITE), col="blue")
dev.off()
