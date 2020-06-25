# load the data
library(data.table)
df <- fread("./household_power_consumption.txt", skip = "1/2/2007", nrows = 3000)
df <- df[-grep("3/2/2007", df$V1)]
col_names <- fread("./household_power_consumption.txt", nrows = 1)
df <-rbind(col_names, df, use.names = FALSE)
df <- df[-1,]
head(df)
df$Date <- as.Date(df$Date)

# create plot1
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()
