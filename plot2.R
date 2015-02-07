#read source file
source("read_proj1_src.R")

#Plot 2
png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(df$Datetime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()