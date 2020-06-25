par(mfrow = c(2, 2)) 
# First plot
plot(datetime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex.axis = 0.8, cex.lab = 0.8)
# Second plot
plot(datetime, df$Voltage, type="l", xlab="datetime", ylab="Voltage", cex.axis = 0.8, cex.lab = 0.8)
# Third plot
plot(datetime, df$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="", cex.axis = 0.8, cex.lab = 0.8)
lines(datetime, df$Sub_metering_2, type="l", col="red")
lines(datetime, df$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), cex = 0.5)
# Fourth plot
plot(datetime, df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", cex.axis = 0.8, cex.lab = 0.8)
dev.copy(png, file = "plot4.png")
dev.off()