draw_plot4 <- function(png=FALSE){
  # Set plotting device and plot area dimensions
  if(png) png("../plots/plot4.png",height=480,width=480)
  # Draw plot
  par(mfcol = c(2,2))
  draw_plot2()
  draw_plot3()
  plot(power.data$DateTime,power.data$Voltage,ylab="Voltage",xlab="",type="l")
  plot(power.data$DateTime,power.data$Global_reactive_power,ylab="Global Reactive Power",xlab="",type="l")
  # If device is png, close it
  if(png) dev.off()
}