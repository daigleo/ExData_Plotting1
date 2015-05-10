## read input data
source("./ReadData.R")
## Makes a histogram of the Global Active Power
## for 01-02-2007 and 02-02-2007.
png("plot1.png", width=480, height=480, units = "px")
hist(powerCon$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
