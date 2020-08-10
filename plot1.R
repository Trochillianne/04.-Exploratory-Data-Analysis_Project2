# Prepare data set

SCC <- readRDS("C:/Users/victo/Desktop/COURSERA/2020 Data Science Specialization/04. Exploratory Data Analysis/Course_project_1/exdata_data_NEI_data/Source_Classification_Code.rds")
NEI <- readRDS("C:/Users/victo/Desktop/COURSERA/2020 Data Science Specialization/04. Exploratory Data Analysis/Course_project_1/exdata_data_NEI_data/summarySCC_PM25.rds")

# 1Q: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 

totalNEI <- aggregate(Emissions ~ year, NEI, sum)

plot(totalNEI$year, totalNEI$Emissions/1000, type = "o", col = "tomato", 
     xlab = "Year", ylab = expression("Total" ~ PM[2.5] ~ "Emissions (tons)"), 
     main = expression("Total US" ~ PM[2.5] ~ "Emissions by Year (from 1999 to 2008)"))

