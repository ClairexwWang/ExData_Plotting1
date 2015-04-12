> mydata2<- read.table("household_power_consumption.txt", na.strings = "?", header=TRUE,sep=";")
> mydata_sub <- mydata2 [mydata2$Date== "1/2/2007" | mydata2$Date == "2/2/2007",]
> format(Sys.time(), "%d/%m/%y %H:%M:%S")
[1] "13/04/15 00:58:48"
> date <- mydata_sub$Date
> time <- mydata_sub$Time
> dateTime <- paste(mydata_sub$Date, mydata_sub$Time)
> theMax <- max(c(max(mydata_sub$Sub_metering_1), max(mydata_sub$Sub_metering_2), max(mydata_sub$Sub_metering_3)))
> png(filename="plot3.png", width = 480, height = 480)
> plot(mydata_sub$DateTime, mydata_sub$Sub_metering_1, type="l", xlab=NA, ylab="Energy sub metering", ylim=c(0, theMax))
> par(new=T)
> plot(mydata_sub$DateTime, mydata_sub$Sub_metering_2, type="l", col="red", ylim=c(0, theMax), xlab=NA, ylab=NA)
> par(new=T)
> plot(mydata_sub$DateTime, mydata_sub$Sub_metering_3, type="l", col="blue", ylim=c(0, theMax), xlab=NA, ylab=NA)
> par(new=T)
> legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),, lwd=1)
> dev.off()