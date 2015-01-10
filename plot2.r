## Create Plot 2 for Project 1
## get data
data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
## Subset to data range
plotData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert data
globalActivePower <- as.numeric(plotData$Global_active_power)
datetime <- strptime(paste(plotData$Date, plotData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## Plot to png
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
