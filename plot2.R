data=read.table('F:/coursera/eda/household_power_consumption.txt',header=TRUE,sep=";",na.strings="NA");
mydata<-subset(data,as.logical((Date=="1/2/2007")+(Date=="2/2/2007")));

mydata$Global_active_power<-as.numeric(as.character(mydata$Global_active_power))
png(file="F:/coursera/eda/plot2.png")
with(mydata,plot(Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xaxt="n",xlab=""))
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
dev.off()