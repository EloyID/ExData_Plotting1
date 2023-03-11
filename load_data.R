if (!file.exists("./power_consumption.zip")) {
  download.file(
    "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
    destfile = "./power_consumption.zip"
    )
}

if (!file.exists("./household_power_consumption.txt")) {
  unzip("./power_consumption.zip")
}

rawData <- read.table("./household_power_consumption.txt", nrows = 100000, header= TRUE, sep = ";")

transformedData <- rawData %>% 
  filter(Date == "1/2/2007" | Date == "2/2/2007" ) %>% 
  mutate(Date = as.Date(
    Date, format = "%d/%m/%Y"), 
    DateTime = strptime(paste(Date,Time), format= "%Y-%m-%d %H:%M:%S"),
    WeekDay = weekdays(Date),
    
    Global_active_power = as.numeric(Global_active_power),
    Sub_metering_1 = as.numeric(Sub_metering_1),
    Sub_metering_2 = as.numeric(Sub_metering_2),
    Sub_metering_3 = as.numeric(Sub_metering_3),
    Voltage = as.numeric(Voltage),
    Global_reactive_power = as.numeric(Global_reactive_power),
  )
  
