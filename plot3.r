## Create Plot 3 for Project 1
## get data
#data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
## Subset to data range
#plotData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert data
globalActivePower <- as.numeric(plotData$Global_active_power)
datetime <- strptime(paste(plotData$Date, plotData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub1 <- as.numeric(subSetData$Sub_metering_1)
sub2 <- as.numeric(subSetData$Sub_metering_2)
sub3 <- as.numeric(subSetData$Sub_metering_3)

## Plot to png
png("plot3.png", width=480, height=480)
plot(datetime, sub1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(datetime, sub2, type="l", col="red")
lines(datetime, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1 )

dev.off()
