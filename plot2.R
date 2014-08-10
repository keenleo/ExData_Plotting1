pcData <- read.delim("household_power_consumption.txt", header = TRUE, sep = ";")
pcData <- pcData[ which(pcData$Date == "1/2/2007" | pcData$Date == "2/2/2007"), ]
par(mfcol=c(1,1), mar=c(3.6, 3, 3, 1.5))
pcData$Date <- strptime(paste(pcData$Date,pcData$Time), "%d/%m/%Y %H:%M:%S")
plot(pcData$Date,as.numeric(as.character(pcData$Global_active_power)), type = "l", ylab="Global Active Power (kilowatts)", xlab = "", cex.main=0.75, cex.lab=0.75, cex.axis=0.75, mgp = c (2, .5, 0 ), tck=-.02)
dev.copy(png,'plot2.png', width = 480, height = 480, units = "px")
dev.off()