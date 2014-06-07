draw_plot3 <- function(png=FALSE){
  # Set plotting device and plot area dimensions
  if(png) png("../plots/plot3.png",height=480,width=480)
  # Draw plot
  plot(power.data$DateTime,power.data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col="black")
  points(power.data$DateTime,power.data$Sub_metering_2,type="l",col="red")
  points(power.data$DateTime,power.data$Sub_metering_3,type="l",col="blue")
  legend("topright",col=c("black","red","blue"),legend=c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),lty=c(1,1))
  # If device is png, close it
  if(png) dev.off()
}