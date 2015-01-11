dtExp <-fread("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=("?"))

dtFinal <- dtExp[Date=='1/2/2007' | Date=='2/2/2007',]
hist(dfFinal$Global_active_power, axes=F, xlab="Global Active Power (kilowatts)", main="Global Active Power",col="red")
axis(2, at=c(0, 200, 400, 600, 800, 1000, 1200), las=1)
axis(1, at=c(0, 2, 4, 6), las=1)
