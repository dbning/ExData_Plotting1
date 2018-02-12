d <- read.csv("household_power_consumption.txt", sep = ";")
d <- d[(as.Date(d$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(d$Date, "%d/%m/%Y") == "2007-02-02"),]


Sys.setlocale("LC_TIME", "English")
par(mfrow = c(2, 2))

dt <- paste(d$Date, d$Time)
t <- strptime(dt, "%d/%m/%Y %H:%M:%S")

# 1
plot(t, d$Global_active_power, ylab = "Global Active Power", type = "n")
lines(t, d$Global_active_power)

# 2
plot(t, d$Voltage, xlab = "datetime", type = "n")
lines(t, d$Voltage)

# 3
d1 <- as.numeric(as.character(d$Sub_metering_1))
d2 <- as.numeric(as.character(d$Sub_metering_2))
d3 <- as.numeric(as.character(d$Sub_metering_3))

plot(t, d1, ylab = "Energy metering", type = "n")

lines(t, d1)
lines(t, d2, col = "red")
lines(t, d3, col = "blue")

legend("topright", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


# 4
plot(t, d$Global_reactive_power, xlab = "datetime",  ylab = "Global_reactive_power", type = "n")
lines(t, d$Global_reactive_power)


