
#  ------------------------------------------------------------------------
#
# Title : Demo reactcolors - UI
#    By : Victor
#  Date : 2019-01-23
#
#  ------------------------------------------------------------------------


library(shiny)
library(reactcolors)


fluidPage(

  tags$h2("Color pickers with reactcolors", style = "text-align: center;"),
  tags$h4(
    "R interface for React library",
    tags$a(href = "https://casesandberg.github.io/react-color/", "react-color"),
    style = "text-align: center;"
  ),

  fluidRow(
    column(
      width = 6,

      chrome_picker("chrome_inline", "Chrome picker", inline = TRUE),
      verbatimTextOutput("chrome_res_inline"),
      chrome_picker("chrome_btn", "Chrome picker", inline = FALSE),
      verbatimTextOutput("chrome_res_btn"),

      block_picker("block_inline", "Block picker", inline = TRUE),
      verbatimTextOutput("block_res_inline"),
      block_picker("block_btn", "Block picker", inline = FALSE),
      verbatimTextOutput("block_res_btn")

    ),
    column(
      width = 6,

      circle_picker("circle_inline", "Circle picker", inline = TRUE),
      verbatimTextOutput("circle_res_inline"),
      circle_picker("circle_btn", "Circle picker", inline = FALSE),
      verbatimTextOutput("circle_res_btn"),

      compact_picker("compact_inline", "Compact picker", inline = TRUE),
      verbatimTextOutput("compact_res_inline"),
      compact_picker("compact_btn", "Compact picker", inline = FALSE),
      verbatimTextOutput("compact_res_btn")

    )
  )
)
