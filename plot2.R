
library(lubridate)
##hh$Date <-as.Date(hh$Date)
hh <- read.csv("./household_power_consumption2.csv", colClasses=c("character","character","numeric", "numeric", "numeric", "numeric", "integer", "integer", "integer"))
hh$Date <- as.Date(hh$Date,"%d%m%Y")
hh$Time[1:600]<-paste("0",hh$Time[1:600],sep = "")
hh$Time[1441:2040]<-paste("0",hh$Time[1441:2040],sep = "")
ST <- strptime(paste(hh$Date,hh$Time), "%Y-%m-%d %H:%M:%S")
hh$ST <- ST
png(filename = "plot2.png", width = 480, height = 480)
plot(hh$ST,hh$Global_active_power,pch=".",type="l",ylab="Global Active Power (killowatts)", xlab="")
dev.off()
