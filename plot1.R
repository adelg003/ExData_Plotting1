source('data_prep.R')

# Create histgram for plot 1
plot1 = function(df) {

  hist(x = df$Global_active_power, 
       col = 'red', 
       xlab = 'Global Active Power (kilowatts)',
       main = 'Global Active Power')
  
  # save histgram
  dev.copy(png, file = 'plot1.png')
  dev.off()
}

# Get the needed data from the 'data_prep.R' file
df = data_prep()

# run plot1
plot1(df)