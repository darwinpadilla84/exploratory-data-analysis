#ChargeData.R

rm(list = ls()) #Borrar los archivos existentes en memoria
#setwd("E:\\DataScience") #Direccionar el trabajo a una carpeta específica
if(!file.exists("./data")){dir.create("./data")} #Crear una carpeta que contengan los datos
fileUrl="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" #Dirección para extraer la data
download.file(fileUrl,destfile = "./data/EPC.zip") #Descargar la data en la carpeta creada en el paso anterior
unzip(zipfile = "./data/EPC.zip") #Descomprimir la data
dir()

# Cargar data en el sistema
library(readr)
hpc <- read_delim("household_power_consumption.txt",";", escape_double = FALSE, trim_ws = TRUE)
library(lubridate)
hpc$Date <- dmy(hpc$Date)
hpc <- subset(hpc, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(fileUrl)
