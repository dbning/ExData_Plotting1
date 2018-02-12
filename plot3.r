d <- read.csv("household_power_consumption.txt", sep = ";")
d <- d[(as.Date(d$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(d$Date, "%d/%m/%Y") == "2007-02-02"),]
d1 <- as.numeric(as.character(d$Sub_metering_1))
d2 <- as.numeric(as.character(d$Sub_metering_2))
d3 <- as.numeric(as.character(d$Sub_metering_3))

dt <- paste(d$Date, d$Time)
t <- strptime(dt, "%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME", "English")
plot(t, d1, type = "n", xlab = "", ylab = "Energy metering")

lines(t, d1)
lines(t, d2, col = "red")
lines(t, d3, col = "blue")

legend("topright", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

