par(mfrow = c(2, 2))

with(transformedData, plot(
  DateTime,
  Global_active_power, 
  type = "l", 
  xlab = "", 
  ylab = "Global Active Power")
)

with(transformedData, plot(
  DateTime,
  Voltage, 
  type = "l", 
  xlab = "datetime", 
  ylab = "Voltage")
)

with(transformedData, plot(
  DateTime,
  Sub_metering_1, 
  type = "l", 
  xlab = "", 
  ylab = "Energy sub metering"
)
)

with(transformedData, points(
  DateTime,
  Sub_metering_2, 
  type = "l",
  col = "red"
)
)

with(transformedData, points(
  DateTime,
  Sub_metering_3, 
  type = "l",
  col = "blue"
)
)

legend(
  "topright", 
  pch=c("-","-","-"), 
  col= c("black","red","blue"), 
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)


with(transformedData, plot(
  DateTime,
  Global_reactive_power, 
  type = "l", 
  xlab = "datetime", 
  #ylab = "Global_reactive_power"
  )
)


dev.copy(png,file ="plot4.png")
dev.off()

