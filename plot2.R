plot2 <- function()  {
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings=c("?"))
  d2<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
  DT<-strptime(paste(d2$Date,d2$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")
  png("plot2.png")
  plot(DT,d2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  dev.off()
}