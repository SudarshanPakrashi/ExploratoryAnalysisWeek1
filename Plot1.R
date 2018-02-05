library(sqldf)

df <- read.csv.sql("C://Sudarshan//DataScienceCourse//household_power_consumption//household_power_consumption.txt", "select * from file where Date = '1/2/2007' or Date = '2/2/2007' ", sep=";")

png(file = "C://Sudarshan//DataScienceCourse//household_power_consumption//ExData_Plotting1//Plot1.png",width = 480,height = 480)
hist(df$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.off()
