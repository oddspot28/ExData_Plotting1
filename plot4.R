#read source file
source("read_proj1_src.R")

#Plot 4
png(file = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))
plot(df$Datetime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(df$Datetime, df$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(df$Datetime, df$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, col="red")
lines(df$Datetime, df$Sub_metering_3, col="blue")
legend('topright', names(df[7:9]), col=c('black', 'red', 'blue'), lty=1)
plot(df$Datetime, df$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")
dev.off()