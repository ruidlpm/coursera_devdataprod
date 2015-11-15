shinyUI(bootstrapPage(

  plotOutput(outputId = "main_plot"),

	sliderInput(inputId = "bw_adjust",
        label = "Bandwidth adjustment:",
        min = 10, max = 1000, value = 10, step = 10)
  )

)
