draw_plot2 <- function(png=FALSE){
  # Set plotting device and plot area dimensions
  if (png) png("../plots/plot2.png",height=480,width=480)
  # Draw plot
  plot(power.data$DateTime,power.data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  # If device is png, close it
  if (png) dev.off()
}