*Tristan Conde
*Assignment 01
*ADTA 5160 / Spring 2022

*The dataset being analyzed is a sample (N = 901) of Baltimore Ravens and Pittsburgh Steelers National Football League personal seat licenses (PSL) that were sold on the secondary market from 2005 to 2009.

*Below is the following code and commands that were needed to be done to answer the questions for Assignment 01.

*Produce summary statistics for the following variables: seatqual, source, stdage, club and the year of sale indicator variables.
*seatqual
.summarize seatqual

*source
.summarize source

*stdage
.summarize stdage

*club
.summarize club

*year of sale indicator variables
.summarize ind05
.summarize ind06
.summarize ind07
.summarize ind08
.summarize ind09

*What percentage of sales are for seat locations on the aisle? 
.tabulate aisle 

*Use a Stata command to produce the skewness value for stdage and explain what this value tells you.
.summarize stdage, detail
.tab stdage

*6. Produce a frequency distribution for seatqual.   
.tabulate seatqual

*7. Produce a histogram for seatqual with a primary title of "Distribution of PSL Sales by Quality Level" and a subtitle of "2005-2009 Data".  
.histogram seatqual, title("Distribution of PSL Sales by Quality Level") subtitle("2005 - 2009 Data")

*8. What is the mean for the variable source? 
.mean source

*9. Identify the mean and the standard deviation for ticketprice.   
.mean ticketprice
.summarize ticketprice

*10. Produce a two-way frequency distribution for source and club.
.tabulate source club, row

*11. Estimate a linear regression model where the dependent variable is priceperseat. Include the following independent variables as predictors: trend, seatqual, stdage, stdcapacity, club, win3, localunemp 
.regress priceperseat trend seatqual stdage stdcapacity club win3 localunemp