
png(filename = "plot3.png", width = 480, height = 480)
plot(hh$ST,hh$Sub_metering_1,col='black',type="l",ylab="Energy sub metering", xlab="")
points(hh$ST,hh$Sub_metering_2,col='red',type="l")
points(hh$ST,hh$Sub_metering_3,col='blue',type="l")
legend("topright", lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()