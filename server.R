#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$childPlot <- renderPlot({
    #load data from UsingR
    library(UsingR)
    data(galton)
    
    #draw the histogram
    hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
    mu <- input$mu
    lines(c(mu, mu), c(0, 200),col="red",lwd=5)
    mse <- mean((galton$child - mu)^2)
    text(63, 150, paste("mu = ", mu))
    text(63, 140, paste("MSE = ", round(mse, 2)))
  })
  
})
