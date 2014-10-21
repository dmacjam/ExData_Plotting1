source("init.R")
if (!exists("consumption")) {
  consumption <- init()
}

png(filename="plot4.png", width=480, height = 480)
par(mfrow=c(2,2))
with(consumption, {
  plot(Time,Global_active_power, type="l", xlab="", ylab="Global Active Power")
  plot(Time,Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(Time,Sub_metering_1,col="gray", type="l", ylab="Energy stub metering", xlab="")
  lines(Time,Sub_metering_2,col="red")
  lines(Time,Sub_metering_3,col="blue")
  legend("topright", bty="n", lty="solid", col=c("gray","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.9)
  plot(Time,Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
})
dev.off()

cat("Plot4 saved.\n")