plot3 <- function()  {
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings=c("?"))
  d2<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
  DT<-strptime(paste(d2$Date,d2$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")
  png("plot3.png")
  plot(DT,d2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
  lines(DT,d2$Sub_metering_1,col="black")
  lines(DT,d2$Sub_metering_2,col="red")
  lines(DT,d2$Sub_metering_3,col="blue")
  legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
  dev.off()
}