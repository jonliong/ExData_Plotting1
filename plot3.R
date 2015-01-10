runPlot3 <- function() {
  filename <- "household_power_consumption.txt"
  df <- read.table(filename, sep=";", header=TRUE)
  twoDay <- subset(df, (Date == "1/2/2007" | Date == "2/2/2007"))

  png(file = "plot3.png", bg = "transparent")
  plot(twoDay$dateTime, as.character(twoDay$Sub_metering_1), 
       type = "l", ylab="Energy sub metering")
  lines(twoDay$dateTime, as.character(twoDay$Sub_metering_2), col="red")
  lines(twoDay$dateTime, as.character(twoDay$Sub_metering_3), col="blue")
  
  legend("topright", lty=1, col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
  
}