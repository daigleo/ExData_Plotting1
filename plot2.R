## read input data
source("./ReadData.R")
## Makes an xy plot of the Global Active Power vs. time
## for 01-02-2007 and 02-02-2007.
png("plot2.png", width=480, height=480, units = "px")
plot(powerCon$Global_active_power ~ powerCon$DateTime, type="l",
     xlab="", ylab="Global Active Power (kiloWatts)")
dev.off()
