d <- read.csv("household_power_consumption.txt", sep = ";")
d <- d[(as.Date(d$Date, "%d/%m/%Y") == "2007-02-01" | as.Date(d$Date, "%d/%m/%Y") == "2007-02-02"),]
da <- as.numeric(as.character(d$Global_active_power, na.rm = TRUE))
hist(da, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")