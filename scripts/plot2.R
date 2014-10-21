source("init.R")
if (!exists("consumption")) {
  consumption <- init()
}

png(filename="plot2.png", width=480, height = 480)
plot(x=consumption$Time,y=consumption$Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab="")
dev.off()

cat("Plot2 saved.\n")