#install.packages('shiny')
library(shiny)
##### Must be saved as 'app.R'

##### All shiny apps have this basic skeleton
# User Interface

ui = fluidPage(
  titlePanel("Diamonds Data")
)

# Server

server = function(input, output) {
  
}

# Run the App
shinyApp(ui, server)

#####
