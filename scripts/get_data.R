get_data <- function(){
  # Download file
  destination.filename <- "../data/household_power_consumption"
  filename.zip <- paste(destination.filename,".zip",sep="")
  filename.txt <- paste(destination.filename,".txt",sep="")
  if(file.exists(filename.zip)) { file.remove(filename.zip) }
  if(file.exists(filename.txt)) { file.remove(filename.txt) }
  file.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(file.url,destfile=filename.zip,method="curl")
  unzip(filename.zip,exdir="../data")
  # Read source data into a data frame
  power.data <- read.csv("../data/household_power_consumption.txt",sep=";",header=TRUE,na.strings=c("?"))
  # Turn date and time columns into POSIXlt date type
  power.data$DateTime <- strptime(paste(power.data$Date,power.data$Time),"%d/%m/%Y %H:%M:%S")
  # Keep only records for 2007-02-01 and 2007-02-02. To include all minutes in 2007-02-02, use a strictly less than 2007-02-03
  start.date <- as.POSIXlt("1/2/2007",format="%d/%m/%Y") # Set the starting date into the right date/time format based on regional settings
  end.date <- as.POSIXlt("3/2/2007",format="%d/%m/%Y") # Set the ending date into the right date/time format based on regional settings
  power.data <- power.data[power.data$DateTime >= start.date & power.data$DateTime < end.date,]
  # Remove Date and Time column and place DateTime at the beginning
  power.data <- power.data[,c(10,3,4,5,6,7,8,9)]
  return(power.data)
}