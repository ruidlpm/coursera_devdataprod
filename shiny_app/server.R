shinyServer(function(input, output) {
  output$main_plot <- renderPlot({
  require(visreg)
  
  do_rnorm <-function(x){
	rnorm(x)
  }

  a<-do_rnorm(input$adjust)
  b<-do_rnorm(input$adjust)

  fit<-lm(a~b)
  visreg(fit, xlab="var b", ylab="var a")

  })
})
