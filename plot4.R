source('data_prep.R')

# Create line graph for plot 3
plot4 = function(df) {
  
  par(mfrow = c(2, 2))
  
  
  # plot #1: line graph
  plot(x = df$DateTime, 
       y = df$Global_active_power, 
       type = 'l',
       xlab = '',
       ylab = 'Global Active Power')
  
  
  # plot #2: line graph
  plot(x = df$DateTime, 
       y = df$Voltage, 
       type = 'l',
       xlab = 'dateTime',
       ylab = 'Voltage')
  
  
  # plot #3: line graph
  plot(x = df$DateTime,
       y = df$Sub_metering_1, 
       type = 'l',
       xlab = '',
       ylab = 'Energy sub metering')
  
  
  # add line to graph
  lines(x = df$DateTime,
        y = df$Sub_metering_2,
        col = 'red')
  
  # add line to graph
  lines(x = df$DateTime,
        y = df$Sub_metering_3,
        col = 'blue')
  
  # add legend
  legend('topright', 
         legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
         col = c('black', 'red', 'blue'),
         lty = 1)
  
  
  # plot #4: line graph
  plot(x = df$DateTime, 
       y = df$Global_reactive_power, 
       type = 'l',
       xlab = 'dateTime',
       ylab = 'Global_reactive_power')
  
  
  # save line graph
  dev.copy(png, file = 'plot4.png')
  dev.off()
}

# Get the needed data
df = data_prep()

# run plot1
plot4(df)