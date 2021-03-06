sample<-read.table("household_power_consumption.txt",header=TRUE,nrows=100)
classes<-sapply(sample,class)
table<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses=classes,na.strings="?")
table$Date<-as.Date(table$Date,"%d/%m/%Y")
subtable<-subset(table,(table$Date== as.Date("2007-02-01") | table$Date == as.Date("2007-02-02")))
png(filename="plot1.png")
hist(subtable$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.off()
