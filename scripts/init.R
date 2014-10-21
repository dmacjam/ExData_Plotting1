init <- function(){
  if(file.exists("household_power_consumption.txt")){
    consumption <- read.table("household_power_consumption.txt",header=TRUE,sep=";", na.strings ="?")
    consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
    consumption <- subset(consumption, Date == "2007-02-01" | Date == "2007-02-02")
    consumption$Time <- strptime(paste(consumption$Date,consumption$Time), format="%Y-%m-%d %T")
    cat("Done loading file\n")
  }else{
    cat("File is not found.")
  }
  return(consumption)
}