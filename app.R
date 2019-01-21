library(shiny)
library(react-color)

ui <- fluidPage(
  titlePanel("reactR HTMLWidget Example"),
  react-colorOutput('widgetOutput')
)

server <- function(input, output, session) {
  output$widgetOutput <- renderReact-color(
    react-color("Hello world!")
  )
}

shinyApp(ui, server)