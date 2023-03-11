par(mfrow = c(1, 1))

hist(
  transformedData$Global_active_power, 
  col="red", 
  xlab = "Global Active Power (kilowatts)", 
  main = "Global Active Power"
  )

dev.copy(png,file ="plot1.png")
dev.off()
