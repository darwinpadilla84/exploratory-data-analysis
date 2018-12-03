#plot1
source("ChargeData.R")

hist(hpc$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts",
     ylab = "Frecuency",main = "Global Active Power")

dev.copy(png, file="./plot1.png", height=480, width=480)
dev.off()