runPlot1 <- function() {
  filename <- "household_power_consumption.txt"
  df <- read.table(filename, sep=";", header=TRUE)
  twoDay <- subset(df, (Date == "1/2/2007" | Date == "2/2/2007"))

  png(file = "plot1.png", bg = "transparent")
  hist(as.numeric(as.character(twoDay$Global_active_power)), 
       col="red", 
       main="Global Active Power", 
       xlab="Global Active Power (kilowatts)")
  dev.off();
  
}