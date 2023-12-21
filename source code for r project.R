#print data set
data("Alcohole_Con")
print(Alcohol_Con)

#Statistical Analysis
max(Alcohol_Con$`LITRES/CAPITA`)

min(Alcohol_Con$`LITRES/CAPITA`)

mean(Alcohol_Con$`LITRES/CAPITA`)

median(Alcohol_Con$`LITRES/CAPITA`)

var(Alcohol_Con$`LITRES/CAPITA`)

hist(Alcohol_Con$`LITRES/CAPITA`,col="green",border="black")


#barplote code
str(Alcohol_Con)
aus_alcohol_data <- subset(Alcohol_Con, LOCATION == "AUS" & INDICATOR == "ALCOHOL" & SUBJECT == "TOT")

print(aus_alcohol_data)
barplot(aus_alcohol_data$`LITRES/CAPITA`, 
        names.arg = aus_alcohol_data$TIME,
        main = "Alcohol Consumption in Australia (Total)",
        xlab = "Year",
        ylab = "Litres per Capita",
        col = "blue",
        border = "black",
        ylim = c(0, max(aus_alcohol_data$`LITRES/CAPITA`) + 1),
        beside = TRUE)  # Use 'beside = TRUE' for side-by-side bars

grid()

#piachart

aut_alcohol_data <- subset(Alcohol_Con, LOCATION == "AUT" & INDICATOR == "ALCOHOL" & SUBJECT == "TOT")


pie(aut_alcohol_data$`LITRES/CAPITA`,
    labels = aut_alcohol_data$TIME,
    main = "Alcohol Consumption in Austria (Total)",
    col = rainbow(length(aut_alcohol_data$TIME)),
    cex = 0.4)