> mydata2<- read.table("household_power_consumption.txt", na.strings = "?", header=TRUE,sep=";")
> mydata_sub <- mydata2 [mydata2$Date== "1/2/2007" | mydata2$Date == "2/2/2007",]
> format(Sys.time(), "%d/%m/%y %H:%M:%S")
[1] "13/04/15 00:58:48"
> date <- mydata_sub$Date
> time <- mydata_sub$Time
> dateTime <- paste(mydata_sub$Date, mydata_sub$Time)
> mydata_sub$DateTime <- strptime(dateTime, "%d/%m/%Y %H:%M:%S")
> png(filename="plot2.png", width = 480, height = 480)
> plot(mydata_sub$DateTime, mydata_sub$Global_active_power, type="l", xlab=NA, ylab="Global Active Power (kilowatts)")
> 
> dev.off()