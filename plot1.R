> mydata2<- read.table("household_power_consumption.txt", na.strings = "?", header=TRUE,sep=";")
> mydata_sub <- mydata2 [mydata2$Date== "1/2/2007" | mydata2$Date == "2/2/2007",]
> png(filename="plot1.png", width = 480, height = 480)
> hist(mydata_sub$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
> dev.off