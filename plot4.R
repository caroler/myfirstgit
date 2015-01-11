data=read.table('F:/coursera/eda/household_power_consumption.txt',header=TRUE,sep=";",na.strings="NA");
mydata<-subset(data,as.logical((Date=="1/2/2007")+(Date=="2/2/2007")));

png(file="F:/coursera/eda/plot4.png");
par(mfrow=c(2,2))

mydata$Global_active_power<-as.numeric(as.character(mydata$Global_active_power))
with(mydata,plot(Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xaxt="n",xlab=""))
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

mydata$Voltage<-as.numeric(as.character(mydata$Voltage));
with(mydata,plot(Voltage,type="l",ylab="Voltage",xaxt="n",xlab="datetime"));
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"));

mydata$Sub_metering_1<-as.numeric(as.character(mydata$Sub_metering_1))
mydata$Sub_metering_2<-as.numeric(as.character(mydata$Sub_metering_2))
with(mydata,plot(Sub_metering_1,ylab="Energy sub metering",type="l",xaxt="n",xlab=""))
lines(mydata$Sub_metering_2,col="red");
lines(mydata$Sub_metering_3,col="blue");
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"));
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1),bty="n")

mydata$Global_reactive_power<-as.numeric(as.character(mydata$Global_reactive_power));
with(mydata,plot(Global_reactive_power,type="l",xaxt="n",xlab="datetime"));
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"));

dev.off()