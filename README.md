## Introduction

The project is organized in 3 folders:
- scripts: contain the various R scripts
	- get_data.R: download the source data, unzip and prepare the data frame:
		- Function name: get_data()
		- Returns a data frame with the following columns:
			- DateTime: combination of original Date and Time factors converted to POSIXlt data type
			- Global_active_power
			- Global_reactive_power
			- Voltage
			- Global_intensity
			- Sub_metering_1
			- Sub_metering_2
			- Sub_metering_3						
		- Filter the source data and keeps only records for 01-02-2007 and 02-02-2007
		- If the source files were already in the folder, they're removed first
	- plot1.R: draw plot1
		- Function name: draw_plot1()
		- if TRUE is passed as parameter, generate plot1.png in plots folder
	- draw_plot2: draw plot2
		- Function name: draw_plot2()
		- if TRUE is passed as parameter, generate plot2.png in plots folder
	- draw_plot3: draw plot3
		- Function name: draw_plot3()
		- if TRUE is passed as parameter, generate plot3.png in plots folder
	- draw_plot4: draw plot4
		- Function name: draw_plot4()	
		- if TRUE is passed as parameter, generate plot4.png in plots folder
	- main: executes all above functions to get the data and draw all plots into 4 png files in plots folder
- data: the get_data() function will download the source file, unzip in this folder
- plots: contains the four plots requested in the work assignment_	

# Instructions

1. Set the working directory to the scripts folder
2. Call main() to pull the data from the source URL, read it into a data frame, then draw all four plots into individual png files within plots sub-directory: plot1.png, plot2.png, plot3.png and plot4.png