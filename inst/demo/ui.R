
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
      width = 4,

      chrome_picker("chrome_inline", "Chrome picker", inline = TRUE),
      verbatimTextOutput("chrome_res_inline"),
      chrome_picker("chrome_btn", "Chrome picker", inline = FALSE),
      verbatimTextOutput("chrome_res_btn"),

      block_picker("block_inline", "Block picker", inline = TRUE),
      verbatimTextOutput("block_res_inline"),
      block_picker("block_btn", "Block picker", inline = FALSE),
      verbatimTextOutput("block_res_btn"),

      twitter_picker("twitter_inline", "Twitter picker", inline = TRUE),
      verbatimTextOutput("twitter_res_inline"),
      twitter_picker("twitter_btn", "Twitter picker", inline = FALSE),
      verbatimTextOutput("twitter_res_btn")

    ),
    column(
      width = 4,

      circle_picker("circle_inline", "Circle picker", inline = TRUE),
      verbatimTextOutput("circle_res_inline"),
      circle_picker("circle_btn", "Circle picker", inline = FALSE),
      verbatimTextOutput("circle_res_btn"),

      compact_picker("compact_inline", "Compact picker", inline = TRUE),
      verbatimTextOutput("compact_res_inline"),
      compact_picker("compact_btn", "Compact picker", inline = FALSE),
      verbatimTextOutput("compact_res_btn"),

      swatches_picker("swatches_inline", "Swatch picker", inline = TRUE),
      verbatimTextOutput("swatches_res_inline"),
      swatches_picker("swatches_btn", "Swatch picker", inline = FALSE),
      verbatimTextOutput("swatches_res_btn")

    ),
    column(
      width = 4,

      photoshop_picker("photoshop_inline", "Photoshop picker", inline = TRUE),
      verbatimTextOutput("photoshop_res_inline"),
      photoshop_picker("photoshop_btn", "Photoshop picker", inline = FALSE),
      verbatimTextOutput("photoshop_res_btn"),

      sketch_picker("sketch_inline", "Sketch picker", inline = TRUE),
      verbatimTextOutput("sketch_res_inline"),
      sketch_picker("sketch_btn", "Sketch picker", inline = FALSE),
      verbatimTextOutput("sketch_res_btn")

    )
  )
)
