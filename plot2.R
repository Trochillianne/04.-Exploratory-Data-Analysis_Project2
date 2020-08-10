# 2Q: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland from 1999 to 2008?  

baltimoreCity <- subset(NEI, fips == "24510")
totalBaltimore <- aggregate(Emissions ~ year, baltimoreCity, sum)

plot(totalBaltimore$year, totalBaltimore$Emissions, type = "o", col = "tomato", 
     xlab = "Year", ylab = expression("Total" ~ PM[2.5] ~ "Emissions (tons)"), 
     main = expression("Total Baltimore City, Maryland" ~ PM[2.5] ~ "Emissions by Year (from 1999 to 2008)"))