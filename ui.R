library(shiny)
shinyUI(fluidPage(
  titlePanel("Graph a Line"),
  sidebarLayout(
    sidebarPanel(
      numericInput("Y_Int","Enter Y-Intercept", value = 0),  
      numericInput("Slope","Enter Slope", value = 1),
      sliderInput("sliderX", "Enter your horizontal axis limits",-10,10,value=c(-5,5)),
      sliderInput("sliderY", "Enter your vertical axis limits",-10,10,value=c(-5,5)),
      submitButton("Submit")
    ),
      
#      h1('Move the Slider'),
#      sliderInput("slider2","Slide Me!",0,100,0)
#  ),
  mainPanel(
    h3("To graph a line, enter your values of the slope and y-intercept"),
    h3("Use the slide bars to determine to x-axis and y-axis limits"),
    plotOutput("plot1")
  )
  )
))