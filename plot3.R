# 3Q: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? 
# Which have seen increases in emissions from 1999-2008? 

baltimoreNEI <- subset(NEI, fips == "24510")
baltimoreNEI$year <- as.factor(baltimoreNEI$year) # year factored to plot labels
typeBaltimoreNEI <- aggregate(Emissions ~ (year+type), baltimoreNEI, sum)

ggplot(data=typeBaltimoreNEI, aes(fill=type, x=year, y=Emissions)) + 
        geom_bar(stat="identity") + 
        facet_wrap(~type) + 
        ggtitle(expression("Total"~PM[2.5]~"Emissions, Baltimore City", subtitle = "By Source Type")) +
        xlab("Year") + 
        ylab(expression("Baltimore"~PM[2.5]~"Emissions")) + 
        theme(legend.title = element_text(face = "bold"))


