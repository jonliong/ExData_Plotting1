runPlot4 <-function() {
  filename <- "household_power_consumption.txt"
  df <- read.table(filename, sep=";", header=TRUE)
  twoDay <- subset(df, (Date == "1/2/2007" | Date == "2/2/2007"))
  
  png(file = "plot4.png", bg = "transparent")
  par(mfrow=c(2,2))
  par(mar=c(4,4,1,2))
  plot(twoDay$dateTime, as.character(twoDay$Global_active_power), type = "l",
       ylab = "Global Active Power", xlab="")
  
  plot(twoDay$dateTime, as.character(twoDay$Voltage), type = "l",
       ylab = "Voltage", xlab = "datetime")
  
  plot(twoDay$dateTime, as.character(twoDay$Sub_metering_1), type = "l", ylab="Energy sub metering", xlab="")
  lines(twoDay$dateTime, as.character(twoDay$Sub_metering_2), col="red")
  lines(twoDay$dateTime, as.character(twoDay$Sub_metering_3), col="blue")
  legend("topright", lty=1, col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         bty="n")
  
  plot(twoDay$dateTime, as.character(twoDay$Global_reactive_power), type = "l",
       ylab = "Global_reactive_power", xlab = "datetime")
  
  dev.off()
}
