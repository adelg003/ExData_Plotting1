# Import all plotting functions
source('data_prep.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

# Get the needed data
df = data_prep()

# run plot1
plot1(df)

# run plot2
plot2(df)

# run plot3
plot3(df)

# run plot4
plot4(df)
