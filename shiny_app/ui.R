
shinyUI(bootstrapPage(

  plotOutput(outputId = "main_plot"),

	sliderInput(inputId = "Year",
        label = "Adjustment:",
        min = 1965, max = 2014, value = 1965, step = 1)
  )

)
