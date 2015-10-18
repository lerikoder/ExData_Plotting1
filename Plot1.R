plot1 <- function(){
	library(graphics)
	# You can make setwd() according to your PC
	with(df02, hist(Global_active_power / 1000, main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
		ylab = "Frequency", col = "red"))
	dev.copy(png, file = "Plot1.png")
	dev.off()
}
