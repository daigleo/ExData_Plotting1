## read input data
source("./ReadData.R")
## Makes a multiplot of various values vs. time
## for 01-02-2007 and 02-02-2007.
png("plot4.png", width=480, height=480, units = "px")
## a plot window with two rows and two columns
par(mfrow = c(2,2))
with(powerCon, {
        ## Draws the Global active power vs. time plot
        plot(Global_active_power ~ DateTime, type="l",
             xlab="", ylab="Global Active Power (kiloWatts)")
        ## Draws the Voltage vs. time plot
        plot(Voltage ~ DateTime, type="l",
             xlab="datetime", ylab="Voltage")
        ## Draws the energy sub meterings vs. time plot
        plot(powerCon$Sub_metering_1 ~ powerCon$DateTime, type="l",
             xlab="", ylab="Energy sub metering")
        lines(powerCon$Sub_metering_2 ~ powerCon$DateTime, type="l", col="red")
        lines(powerCon$Sub_metering_3 ~ powerCon$DateTime, type="l", col="blue")
        legend("topright", col=c("black","red","blue"), lty=1, bty="n",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        ## Drawgs the global reactive power vs time plot
        plot(Global_reactive_power ~ DateTime, type="l")
})
dev.off()
