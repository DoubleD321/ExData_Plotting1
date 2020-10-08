## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

dataset: hpc - contains a 2mil+ rows and 9 columns

Date and time formatted accordingly

## New column added to hpc dataset that combines the date and time
new column: "DateTime"

## Data subseted to isolate the two days (Feb 1 & 2, 2007) of data that we want

dataset : hpc_data -- contain 2880 rows and 10 columns

DateTime column formatted as POSIXct to use for plots

## Plots

Four plots were created.
<li>Plot 1 -- Histogram of Global Active Power vs Frequency
<li>Plot 2 -- Line plot of Global Active Power vs Date/Time
<li>Plot 3 -- Line plots of Energy sub metering vs Date/Time
<li>Plot 4 -- Place 4 graph on one page all vs Date/Time: Global Active Power, 
          Voltage, Energy sub metering, and Global Reactive PowerOur overall 
          goal here is simply to examine how

All plots have been constructed and saved to a PNG file with a width of 480
pixels and a height of 480 pixels.

Naming of each plot file set is structured as `plot1.png`, `plot2.png`,  etc.
