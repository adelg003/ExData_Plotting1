source('data_prep.R')

# Create line graph for plot 3
plot3 = function(df) {
  
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
  
  # save line graph
  dev.copy(png, file = 'plot3.png')
  dev.off()
}

# Get the needed data from the 'data_prep.R' file
df = data_prep()

# run plot1
plot3(df)