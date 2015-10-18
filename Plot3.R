plot3 <- function(){
        library(graphics)
        # You can setwd() according to your PC
        with(df02, plot(newDate, Sub:metering_1 / 1000, df02, main = "Sub Metering", 
		ylab = "Energy sub metering", col = "black", type = "l"))
	lines(newDate, Sub:metering_2 / 1000, col = "blue", lty = 1)
	lines(newDate, Sub:metering_3 / 1000, col = "red", lty = 1)
	dev.copy(png, file = "Plot3.png") 
	dev.off()
}
