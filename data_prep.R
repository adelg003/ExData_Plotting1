# Function to read, pasre, cleanup, and return the needed data
data_prep = function() {
  
  # Download the data (but only if the file does not already exists)
  url = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  zip_file_name = 'household_power_consumption.zip'
  if(!file.exists(zip_file_name)) {
    download.file(url, zip_file_name)
  }
  
  file_name = 'household_power_consumption.txt'
  
  # Unzip the data (but only if the file does not already exists)
  if(!file.exists(file_name)) {
    unzip(zip_file_name)
  }
  
  # Read in the necessary training data
  df = read.table('household_power_consumption.txt',header = TRUE, sep = ';')
  
  # Filter fo necisary dates
  in_scope = df$Date %in% c('1/2/2007', '2/2/2007')
  df = df[in_scope,]
  
  # Cleanup the dates and numerics
  df$Date = as.Date(df$Date, format = '%d/%m/%Y')
  df$DateTime = as.POSIXlt(paste(df$Date, df$Time))
  df$Global_active_power = as.numeric(as.character(df$Global_active_power))
  df$Global_reactive_power = as.numeric(as.character(df$Global_reactive_power))
  df$Voltage = as.numeric(as.character(df$Voltage))
  df$Global_intensity = as.numeric(as.character(df$Global_intensity))
  df$Sub_metering_1 = as.numeric(as.character(df$Sub_metering_1))
  df$Sub_metering_2 = as.numeric(as.character(df$Sub_metering_2))
  df$Sub_metering_3 = as.numeric(as.character(df$Sub_metering_3))
  
  return(df)

}
