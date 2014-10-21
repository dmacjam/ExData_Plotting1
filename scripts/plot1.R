source("init.R")
if (!exists("consumption")) {
  consumption <- init()
}

png(filename="plot1.png", width=480, height = 480)
hist(consumption$Global_active_power, col="red", main="Global Active Power", xlab = "Global active power(kilowatts)")
dev.off()

cat("Plot1 saved.\n")