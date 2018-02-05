library(sqldf)
library(lubridate)

df <- read.csv.sql("C://Sudarshan//DataScienceCourse//household_power_consumption//household_power_consumption.txt", "select * from file where Global_active_power != '?' and Date = '1/2/2007' or Date = '2/2/2007' ", sep=";",)
df$Datetime <- strptime(paste(df$Date, df$Time, seq = " "), "%d/%m/%Y %H:%M:%S")

png(file = "C://Sudarshan//DataScienceCourse//household_power_consumption//ExData_Plotting1//Plot3.png",width = 480,height = 480)

with(df, plot(Datetime, Sub_metering_1, type = "l", xlab = "", col = "black", ylab = "Energy sub metering", ylim = c(0,40)))
lines(df$Datetime, df$Sub_metering_2, col = "red")
lines(df$Datetime, df$Sub_metering_3, col = "blue")
legend("topright", legend =  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = "solid", col = c("black","red","blue"))

dev.off()
