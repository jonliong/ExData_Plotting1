runPlot2 <- function() {
  filename <- "household_power_consumption.txt"
  df <- read.table(filename, sep=";", header=TRUE)
  twoDay <- subset(df, (Date == "1/2/2007" | Date == "2/2/2007"))

  png(file = "plot2.png", bg = "transparent")
  plot(input$dateTime, as.character(input$Global_active_power), type = "l",
       ylab = "Global Active Power (kilowatts)")
  dev.off()
}