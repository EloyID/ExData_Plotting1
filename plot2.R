par(mfrow = c(1, 1))

with(transformedData, plot(
  DateTime,
  Global_active_power, 
  type = "l", 
  xlab = "", 
  ylab = "Global Active Power (kilowatts)")
  )

dev.copy(png,file ="plot2.png")
dev.off()
