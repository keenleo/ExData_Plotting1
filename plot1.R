pcData <- read.delim("household_power_consumption.txt", header = TRUE, sep = ";")
pcData <- pcData[ which(pcData$Date == "1/2/2007" | pcData$Date == "2/2/2007"), ]
phst <- hist(as.numeric(as.character(pcData$Global_active_power)))
par(mfcol=c(1,1), mar=c(3.6, 3, 3, 1.5))
plot(phst, col="red", main ="Global Active Power" , xlab="Global Active Power (kilowatts)", cex.main=0.75, cex.lab=0.75, cex.axis=0.75, mgp = c (2, .5, 0 ), tck=-.02)
dev.copy(png,'plot1.png', width = 480, height = 480, units = "px")
dev.off()