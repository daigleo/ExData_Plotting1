## read input data
source("./ReadData.R")
## Makes an xy plot of the energy submeterings vs. time
## for 01-02-2007 and 02-02-2007.
png("plot3.png", width=480, height=480, units = "px")
plot(powerCon$Sub_metering_1 ~ powerCon$DateTime, type="l",
     xlab="", ylab="Energy sub metering")
lines(powerCon$Sub_metering_2 ~ powerCon$DateTime, type="l", col="red")
lines(powerCon$Sub_metering_3 ~ powerCon$DateTime, type="l", col="blue")
legend("topright", col=c("black","red","blue"), lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
