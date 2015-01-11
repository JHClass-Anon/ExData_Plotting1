
dtExp <-fread("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=("?"))
dtFinal <- dtExp[Date=='1/2/2007' | Date=='2/2/2007',]
dfFinal <- as.data.frame(dtFinal) 

png("plot4.png", 480, 480)
par(mfrow = c(2,2))

##Global Active
plot(dfFinal$Global_active_power,ylab="Global Active Power", xlab="", type="n", axes=FALSE)
lines(dfFinal$Global_active_power)
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
box()

##Voltage
plot(dfFinal$Voltage,ylab="Voltage", xlab="datetime", type="n", axes=FALSE)
lines(dfFinal$Voltage)
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(234,236,238,240,242,244,246), labels=c(234," ",238," ",242," ",246))
box()

##Energy metering
plot(dfFinal$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n", axes=FALSE)
lines(dfFinal$Sub_metering_1)
lines(dfFinal$Sub_metering_2, col="red")
lines(dfFinal$Sub_metering_3, col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0, 10, 20, 30))
box()
legend("topright",col = c("black", "red", "blue"), bty="n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)

##Reactive Power
plot(dfFinal$Global_reactive_power,ylab="Global_reactive_power", xlab="datetime", type="n", axes=FALSE)
lines(dfFinal$Global_reactive_power)
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0, 0.1, 0.2, 0.3, 0.4, 0.5))
box()
dev.off()
par(mfrow = c(1,1))
