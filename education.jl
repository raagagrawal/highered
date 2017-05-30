using DataFrames
using StatPlots
using DataArrays
#Importing in dateset
cpi = readtable("cpi.csv")
#setting as date format
cpidate = Date(cpi[1])
#seperating dataset
cpidata = cpi[2]
#normalizing
cpinormal = cpi[2]/sum(cpi[2])
#reading in higher ed dataset
highered = readtable("highered.csv")
#seperating out date
highereddate = DataArray(highered[1])
#making as Date
highereddate = Date(highereddate)
#normalizing
higherednormal = highered[2]/sum(highered[2])
#plot unnormalized cpi vs highered
plot(cpidate, cpidata, label = "Urban CPI")
plot!(highereddate, highered[2], label = "Higher Education CPI")
title!("Urban CPI vs. Higher Education")
xaxis!("Date")
yaxis!("Price")

#plot normalized Plots
plot(cpidate, cpinormal)
plot!(highereddate, higherednormal)
