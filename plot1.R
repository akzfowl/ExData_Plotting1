hh <- read.csv("./household_power_consumption2.csv", colClasses=c("character","character","numeric", "numeric", "numeric", "numeric", "integer", "integer", "integer"))
png(filename = "plot1.png", width = 480, height = 480)
hist(hh$Global_active_power, col="#ff2500", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
