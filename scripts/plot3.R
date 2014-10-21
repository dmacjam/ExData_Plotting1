source("init.R")
if (!exists("consumption")) {
  consumption <- init()
}

png(filename="plot3.png", width=480, height = 480)
plot(consumption$Time,consumption$Sub_metering_1,col="gray", type="l", ylab="Energy stub metering", xlab="")
lines(consumption$Time,consumption$Sub_metering_2,col="red")
lines(consumption$Time,consumption$Sub_metering_3,col="blue")
legend("topright", lty="solid", lwd=2, col=c("gray","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

cat("Plot3 saved.\n")