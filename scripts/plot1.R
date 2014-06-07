draw_plot1 <- function(png=FALSE){
  # Set plotting device and plot area dimensions
  if (png) png("../plots/plot1.png",width=480,height=480,units="px")
  # Draw plot
  hist(power.data$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
  # If device is png, close it
  if (png) dev.off()
}