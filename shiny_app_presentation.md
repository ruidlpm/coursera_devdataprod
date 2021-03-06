#Final assignment for coursera devdataprod
World mortality rate (<5yrs old) between 1965-2014
========================================================
author: ruidlpm
date: 21/11/2015
autosize: true

First Slide
========================================================

World mortality rate (<5yrs old) between 1965-2014

- Data retrieved from http://databank.worldbank.org/ on the 21/11/2015
- Shows world mortality rate (<5yrs old) on a world map, coloured according to the value
- Uses a slider to change the year (1965-2014)

This is the server.R code
========================================================

```r
require(shiny)
shinyServer(function(input, output) {
  output$main_plot <- renderPlot({
  require(maps)
	require(plotrix)
	df<-read.table("mortality.txt", h=T)

	test_col<-color.scale(df[colnames(df)==paste("X",input$Year, sep="")][1:length(df),], extremes=c("black","blue", "yellow" ,"red"))

	map(database="world", fill=T, plot=T,interior=F, col="navajowhite3", border = "navajowhite3", bg="lightblue")
	map("world", interior = F, add = T)
	points(df$lon, df$lat, bg=test_col, cex=round(df[colnames(df)==paste("X",input$Year, sep="")][1:length(df),]/10)/10, pch=21)
	mtext("Mortality rate/100, under-5 (per 1,000 live births)", cex=2)


  })
})
```

And this is the output
========================================================
Mortality rates 1965
![plot of chunk unnamed-chunk-2](shiny_app_presemtarion-figure/unnamed-chunk-2-1.png) 
Links
========================================================

 - The app can be found here: https://ruidlpm.shinyapps.io/shiny_app
 - And the code is here https://github.com/ruidlpm/coursera_devdataprod/tree/master/shiny_app
 
