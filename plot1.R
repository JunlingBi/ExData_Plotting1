
#loading data
data_set<-read.table("household_power_consumption.txt",header = TRUE,sep=";",na.strings = "?")

#subsetting data from the dates 2007-02-01 and 2007-02-02
datasubset <- subset(data_set, Date %in% c("1/2/2007","2/2/2007"))

#formatting date
datasubset$Date <- as.Date(datasubset$Date, format="%d/%m/%Y")

#making a histogram
hist(datasubset$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

#saving it to a png file
dev.copy(png,"plot1.png",width = 480, height = 480)
dev.off()