#read source file
source("read_proj1_src.R")

#Plot 1
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(df$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="#ff2500")
dev.off()