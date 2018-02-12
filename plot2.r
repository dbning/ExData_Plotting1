d <- read.csv("household_power_consumption.txt", sep = ";")
d <- d[(as.Date(d$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(d$Date, "%d/%m/%Y") == "2007-02-02"),]
dy <- as.numeric(as.character(d$Global_active_power))

dt <- paste(d$Date, d$Time)
t <- strptime(dt, "%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME", "English")
plot(t, dy, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(t, dy)