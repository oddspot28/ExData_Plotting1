# read src
df <- read.table(file="./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactor=FALSE, na.strings="?")

# only interested in the first 2 days of Feb 2007
df <- within(df, Date <- as.Date(Date, "%d/%m/%Y"))
df <- df[df$Date >= as.Date("01/02/2007", "%d/%m/%Y") & df$Date <= as.Date("02/02/2007", "%d/%m/%Y"),]

# make a new datetime col
df <- within(df, Datetime <- as.POSIXlt(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S"))