plot3 <- function(){
        library(graphics)
        # You can setwd() according to your PC
        with(df02, plot(newDate, Global_reactive_power / 1000, df02, main = "Global Rective Power", 
		xlab = "Global Rective Power (kilowatts)", 
		ylab = "Frequency", col = "red", type = "l"))
	dev.copy(png, file = "Plot3.png") 
	dev.off()
}
