#read source file
source("read_proj1_src.R")

#Plot 3
png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(df$Datetime, df$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, col="red")
lines(df$Datetime, df$Sub_metering_3, col="blue")
legend('topright', names(df[7:9]), col=c('black', 'red', 'blue'), lty=1)
dev.off()