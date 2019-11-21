
library(shiny)
shinyServer(
  function(input, output) {
    output$plot1 <- renderPlot({

      plot(x = 1,                 
           xlab = "X Label", 
           ylab = "Y Label",
           xlim = c(input$sliderX[1], input$sliderX[2]), 
           ylim = c(input$sliderY[1], input$sliderY[2]),
           main = paste0("Y = ",input$Y_Int," + ",input$Slope,"X"),
           type = "n")
      abline(h=0, lty=2)
      abline(v=0, lty=2)
      abline(input$Y_Int,input$Slope)

    })
    
    
    
  }
)