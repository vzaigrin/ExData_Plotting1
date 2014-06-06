plot1 <- function()  {
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings=c("?"))
  d2<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
  png("plot1.png")
  hist(d2$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
  dev.off()
}