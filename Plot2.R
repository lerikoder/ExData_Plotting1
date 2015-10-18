plot2 <- function(){
        with(df02, plot(newDate, Global_active_power / 100, df02, main = "Global Active Power", 
		xlab = "Global Active Power (kilowatts)", 
		ylab = "Frequency", col = "red", type = "l"))
	dev.copy(png, file = "Plot2.png")
	dev.off()
}
