## This script reads the household power consumption data file
## and returns the data for the first and second days of February 2007.

## Location of file
fName <- "../household_power_consumption.txt"
powerConsumption <- read.csv(fName,  sep=";", stringsAsFactors=F)

## Extract dates from the data
dates <- as.Date(powerConsumption$Date, "%d/%m/%Y")

## Extract the rows corresponding to 2007-02-01 and 2007-02-02
powerCon <- powerConsumption[which(dates == "2007-02-01" | dates == "2007-02-02"),]
for (i in 3:length(names(powerCon))){
        powerCon[,i] <- as.numeric(powerCon[,i])
}

powerCon$DateTime <- paste(powerCon$Date, powerCon$Time)
powerCon$DateTime <- strptime(powerCon$DateTime, "%d/%m/%Y %H:%M:%S")
powerCon$DateTime <- as.POSIXct(powerCon$DateTime)

## Remove data variables to recover memory space.
rm(powerConsumption, dates)
