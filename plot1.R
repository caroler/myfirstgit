data=read.table('F:/coursera/eda/household_power_consumption.txt',header=TRUE,sep=";",na.strings="NA");
mydata<-subset(data,as.logical((Date=="1/2/2007")+(Date=="2/2/2007")));

mydata$Global_active_power<-as.numeric(as.character(mydata$Global_active_power))
png(file="F:/coursera/eda/plot1.png");
with(mydata,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)"))
dev.off()