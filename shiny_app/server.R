shinyServer(function(input, output) {
  output$main_plot <- renderPlot({
	require(maps)
	require(plotrix)
	df<-read.table("mortality.txt", h=T)

	test_col<-color.scale(df[colnames(df)==paste("X",input$Year, sep="")][1:length(df),], extremes=c("black","blue", "yellow" ,"red"))

	map(database="world", fill=T, plot=T,interior=F, col="navajowhite3", border = "navajowhite3", bg="lightblue")
	map("world", interior = F, add = T)
	points(df$lon, df$lat, bg=test_col, cex=round(df[colnames(df)==paste("X",input$Year, sep="")][1:length(df),]/10)/10, pch=21)



  })
})



