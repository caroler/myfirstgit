data=read.table('F:/coursera/eda/household_power_consumption.txt',header=TRUE,sep=";",na.strings="NA");
mydata<-subset(data,as.logical((Date=="1/2/2007")+(Date=="2/2/2007")));

mydata$Sub_metering_1<-as.numeric(as.character(mydata$Sub_metering_1))
mydata$Sub_metering_2<-as.numeric(as.character(mydata$Sub_metering_2))
png(file="F:/coursera/eda/plot3.png")
with(mydata,plot(Sub_metering_1,ylab="Energy sub metering",type="l",xaxt="n",xlab=""))
lines(mydata$Sub_metering_2,col="red");
lines(mydata$Sub_metering_3,col="blue");
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"));
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()
