#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Child height from galton data"),
  
  # Sidebar with a slider input  
  sidebarLayout(
    sidebarPanel(
      sliderInput('mu', 'Guess at the mean',value = 70, min = 62, max = 74, step =
                  0.05)
    ),
    
    # Show plot of a histogram of child height
    mainPanel(
       plotOutput("childPlot")
    )
  )
))
