# Create line graph for plot 2
plot2 = function(df) {
  
  plot(x = df$DateTime, 
       y = df$Global_active_power, 
       type = 'l',
       xlab = '',
       ylab = 'Global Active Power (kilowatts)')
  
  # save line graph
  dev.copy(png, file = 'plot2.png')
  dev.off()
}