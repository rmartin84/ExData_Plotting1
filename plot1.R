
setwd("C:\\Users\\r\\Downloads\\rprog_data_ProgAssignment3-data\\exploratory")
library(lattice)

dat1 <- read.table("household_power_consumption.txt", header=T, sep=";")
dat2 <- dat1[dat1$Date == "1/2/2007",]
dat3 <- dat1[dat1$Date == "2/2/2007",]
data <- rbind(dat2,dat3)
histogram(as.numeric(as.vector(data$Global_active_power)),
          type="count", col="red", ylim=c(0,1400,200), xlim=c(0,6),
          xlab="Global active power (kilowatts)", ylab="Frequency", breaks=16,
          main="Global active power", heigth=480, widht=480, units="px")
          
dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
