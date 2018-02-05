library(sqldf)
library(lubridate)

df <- read.csv.sql("C://Sudarshan//DataScienceCourse//household_power_consumption//household_power_consumption.txt", "select * from file where Global_active_power != '?' and Date = '1/2/2007' or Date = '2/2/2007' ", sep=";",)
df$Datetime <- strptime(paste(df$Date, df$Time, seq = " "), "%d/%m/%Y %H:%M:%S")

png(file = "C://Sudarshan//DataScienceCourse//household_power_consumption//ExData_Plotting1//Plot2.png",width = 480,height = 480)

plot(df$Datetime,df$Global_active_power,type = "l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
