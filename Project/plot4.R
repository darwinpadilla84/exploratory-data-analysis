#plot4
source("ChargeData.R")

hpc$DateTime <- as.POSIXct(paste(as.Date(hpc$Date),hpc$Time))
par(mfrow=c(2,2))

plot(x=hpc$DateTime,y=hpc$Global_active_power,type = "l",xlab ="",ylab = "Global Active Power",
     main = "")

plot(x=hpc$DateTime,y=hpc$Voltage,type = "l",xlab = "datetime",ylab="Voltage",main = "")

with(hpc,{
    plot(Sub_metering_1~DateTime, type="l",ylab = "Energy sub metering",xlab="")
    lines(Sub_metering_2~DateTime,col="Red")
    lines(Sub_metering_3~DateTime,col="Blue")
})
legend("topright",col = c("black","red","blue"),lty = 1,lwd=2,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(x=hpc$DateTime,y=hpc$Global_reactive_power,type = "l",xlab="datetime")

dev.copy(png,file="./plot4.png",height=480,width=480)
dev.off()
par(mfrow=c(1,1))
