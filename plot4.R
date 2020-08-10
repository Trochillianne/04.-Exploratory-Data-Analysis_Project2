# 4Q: Across the United States, how have emissions from coal combustion-related sources changed
# from 1999-2008?

CoalSCC <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
CoalNEI <- NEI[NEI$SCC %in% CoalSCC$SCC,]
CoalTotal <- aggregate(Emissions~year+type, CoalNEI, sum)

ggplot(CoalTotal, aes(year, Emissions/100, col=type)) + 
        geom_line() + 
        geom_point() + 
        scale_colour_discrete(name = "Type of sources") +
        ggtitle(expression("Total US"~ PM[2.5]~"Coal Emissions"), subtitle = "By Type and Year") +
        xlab("Year") + 
        ylab(expression("US"~PM[2.5]~"Coal Emissions")) + 
        theme(legend.title = element_text(face = "bold"))



