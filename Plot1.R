library(readr)
library(dplyr)
library(tidyr)

## Set working directory
setwd("~/R learning/NewProject/Datasciencecoursera_/ExploratoryDataAnalysis/project1")

## read data into R
hpc <- read.csv("household_power_consumption.txt", header=T, sep=";",na = "?")

## format the date and time

hpc$Date<- as.Date(hpc$Date,format = "%d/%m/%Y")
hpc$Time<- format(hpc$Time, format = "%H:%M:%S")

## added new column that combines the date and time
hpc<- mutate(hpc,"DateTime"= paste(hpc$Date,hpc$Time))

## subset the data isolate to see the two days (Feb 1 & 2, 2007) that we want

hpc_data<- subset(hpc, (Date >="2007/2/1" & Date <"2007/2/3"))

## ensure the DateTime column created is POSIXct date to be used in plots

hpc_data$DateTime<- as.POSIXct(hpc_data$DateTime)

## Plot 1 Active Power vs Frequency
hist((hpc_data$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") 

## code to save histogram as PNG file (make sure you wd is set). Note the easiest
png(filename="plot1.png", width=480, height=480)
hist((hpc_data$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") 
dev.off()
