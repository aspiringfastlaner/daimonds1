#install.packages('shiny')
library(shiny)
library(ggplot2)
##### Must be saved as 'app.R'

##### All shiny apps have this basic skeleton
# User Interface

# Main Panel has graphs
# Sidebar Panel has drop downs

ui = fluidPage(
  titlePanel("Diamonds Data", windowTitle = "Diamonds"),
  sidebarLayout(
    sidebarPanel(
      helpText("This app is to visualize diamonds dataset"),
      textInput(inputId = "title", 
                label = "Chart Title", 
                value = ""),
      selectInput(inputId = "pos",
                  label = "Position",
                  choices = list("stack","dodge")
        
      )
    ),
    mainPanel(
      plotOutput(outputId = "plot")
    )
  )
)

# Server
# R code should be on server side
server = function(input, output) {
  
  output$plot = renderPlot(
    ggplot(diamonds, aes(x = cut, fill = clarity)) +
      geom_bar(position = input$pos) +
      ggtitle(input$title)
  )
}

# Run the App
shinyApp(ui, server)

#####
