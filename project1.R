readData <- function(dataPath = "/home/leocadio/DSCI 04/data", fileData = "household_power_consumption.txt")
{
	file <- paste(dataPath, fileData, sep = "/")		
	result <- read.table(file = file, header = TRUE, sep = ";")
	result
}

sour00 <- function(){
	system("clear")
	source("/home/leocadio/DSCI 04/prg/project1.R")
}

trnsfrm <- function(){   

	system("clear")
	print("Creating newDate")
	df01$newDate <- strptime(paste(as.character(df01$Date), 
		as.character(df01$Time), sep = " "), 
		format = "%d/%m/%Y %H:%M:%S")

	system("clear")
	l1 <- c("--- To Convert Global_active_power to numeric ---", "Continue")
	if(menu(l1, title = "Convert Global_active_power to numeric") == 1){
		print("Converting Global_active_power to nemeric")
		df01$Global_active_power <- as.numeric(df01$Global_active_power)
	}

	system("clear")
	l2 <- c("--- To Convert Global_reactive_power to numeric ---", "Continue")
	if(menu(l2, title = "Convert Global_reactive_power to numeric") == 1){              
		print("Converting  to numeric")
		df01$Global_reactive_power <- as.numeric(df01$Global_reactive_power)
	}

	system("clear")
	l3 <- c("--- To Convert Voltage to numeric ---", "Continue")
	if(menu(l3, title = "Convert Voltage to numeric") == 1){
		print("Converting  to numeric")
		df01$Voltage <- as.numeric(df01$Voltage)
	}

	system("clear")
	l4 <- c("--- To Convert Global_intensity to numeric ---", "Continue")
	if(menu(l4, title = "Convert Global_intensity to numeric") == 1){
		print("Converting  to numeric")
		print("converting Global_intensity to numeric")
		df01$Global_intensity <- as.numeric(df01$Global_intensity)     
	}

	system("clear")
	l5 <- c("Convert Sub_metering_1 to numeric", "Continue")
	if(menu(l5, title = "--- To Convert Sub_metering_1 ---") == 1){ 
		print("...Converting Sub_metering_1 to numeric")
		df01$Sub_metering_1 <- as.numeric(df01$Sub_metering_1)
	}

	system("clear")
	l6 <- c("Convert Sub_metering_2 to numeric", "Continue")
	if(menu(l6, title = "--- To Convert Sub_metering_2 ---") == 1){ 
		print("...Converting Sub_metering_2 to numeric\n0 Continue")
		df01$Sub_metering_2 <- as.numeric(df01$Sub_metering_2)
	}


	system("clear")
	l7 <- c("Convert Sub_metering_3 to numeric", "Continue")
	if(menu(l7, title = "--- To Convert Sub_metering_3 ---") == 1){ 
		print("...Converting Sub_metering_3 to numeric\n0 Continue")
		df01$Sub_metering_3 <- as.numeric(df01$Sub_metering_3)
	}

	system("clear")
	l8 <- c("Create df02", "Continue")
	if(menu(l8, title = "--- To Convert Sub_metering_3 ---") == 1){ 
		print("...Creating df02")
		fDesde <- strptime("01/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
		fHasta <- strptime("03/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
		df02 <<- df01[(df01$newDate > fDesde & df01$newDate < fHasta) &
			!is.na(df01$Global_active_power) &
			!is.na(df01$Global_reactive_power) &
			!is.na(df01$Voltage) &
			!is.na(df01$Global_intensity) &
			!is.na(df01$Sub_metering_1) &
			!is.na(df01$Sub_metering_2) &
			!is.na(df01$Sub_metering_3),]
	}

#	fDesde <- strptime("01/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
#	fHasta <- strptime("03/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
}

setF_ISO <- function(date, frmt = "%d/%m/%Y %H:%M:%S"){	
	strptime(date, format = frmt)
}
