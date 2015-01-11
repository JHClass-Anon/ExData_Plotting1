dtExp <-fread("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=("?"))

dtFinal <- dtExp[Date=='1/2/2007' | Date=='2/2/2007',]
dfFinal <- as.data.frame(dtFinal) 


plot(dfFinal$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n", axes=FALSE)
lines(dfFinal$Sub_metering_1)
lines(dfFinal$Sub_metering_2, col="red")
lines(dfFinal$Sub_metering_3, col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0, 10, 20, 30))
box()
legend("topright",col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)
