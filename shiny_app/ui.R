
shinyUI(bootstrapPage(

  # Application title
  titlePanel("Mortality rate/100, under-5 (per 1,000 live births)"),
  p("Use the slider to change the Year"),
  plotOutput(outputId = "main_plot"),

	sliderInput(inputId = "Year",
        label = "Year:",
        min = 1965, max = 2014, value = 1965, step = 1)
  )

)
