dtExp <-fread("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings=("?"))

dtFinal <- dtExp[Date=='1/2/2007' | Date=='2/2/2007',]
dfFinal <- as.data.frame(dtFinal) 
plot(dfFinal$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="n", axes=FALSE)

lines(dfFinal$Global_active_power)
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
box()

