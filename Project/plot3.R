#Plot3
source("ChargeData.R")
hpc$DateTime <- as.POSIXct(paste(as.Date(hpc$Date), hpc$Time))

with(hpc,{
    plot(Sub_metering_1~DateTime, type="l",ylab = "Energy sub metering",xlab="")
    lines(Sub_metering_2~DateTime,col="Red")
    lines(Sub_metering_3~DateTime,col="Blue")
})
legend("topright",col = c("black","red","blue"),lty = 1,lwd=2,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="./plot3.png",height=480,width=480)
dev.off()