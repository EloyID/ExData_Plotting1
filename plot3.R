par(mfrow = c(1, 1))

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


dev.copy(png,file ="plot3.png")
dev.off()
