## Create Plot 1 for Project 1
## get data
data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
## Subset to data range
plotData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert data
globalActivePower <- as.numeric(plotData$Global_active_power)

## Plot to png
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()