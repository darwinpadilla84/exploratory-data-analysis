#Plot2
source("ChargeData.R")
hpc$DateTime <- as.POSIXct(paste(as.Date(hpc$Date), hpc$Time))

plot(x=hpc$DateTime,y=hpc$Global_active_power,type = "l",xlab ="",ylab = "Global Active Power (kilowatts)",
     main = "")

dev.copy(png, file="./plot2.png", height=480, width=480)
dev.off()
