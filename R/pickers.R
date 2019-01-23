
#' Sketch Picker Input
#'
#' @template params
#' @param preset_colors Vector of colors to be displayed at the bottom of the widget.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' sketch_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Sketch picker color"),
#'     sketch_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     sketch_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
sketch_picker <- function(input_id, label, color = "#112446", preset_colors = NULL, inline = FALSE, width = NULL) {
  color_picker(
    picker = "SketchPicker",
    color = color,
    presetColors = preset_colors,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}

#' Chrome Picker Input
#'
#' @template params
#' @param disable_alpha Remove alpha slider and options from picker.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' chrome_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Chrome picker color"),
#'     chrome_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     chrome_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
chrome_picker <- function(input_id, label, color = "#112446", disable_alpha  = FALSE, inline = FALSE, width = NULL) {
  color_picker(
    picker = "ChromePicker",
    color = color,
    disableAlpha = disable_alpha ,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}

#' Photoshop Picker Input
#'
#' @template params
#' @param header String, Title text.
#' @param on_accept Callback for when accept is clicked, use \code{\link[htmlwidgets]{JS}}.
#' @param on_cancel Callback for when cancel is clicked, use \code{\link[htmlwidgets]{JS}}.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' photoshop_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Photoshop picker color"),
#'     photoshop_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     photoshop_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
photoshop_picker <- function(input_id, label, color = "#112446",
                             header = "Color picker",
                             on_accept = NULL, on_cancel = NULL,
                             inline = FALSE, width = NULL) {
  color_picker(
    picker = "PhotoshopPicker",
    color = color,
    header = header,
    onAccept = on_accept,
    onCancel = on_cancel,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Block Picker Input
#'
#' @template params
#' @param colors Vector of colors to include in the widget.
#' @param triangle Little arrow above the picker : \code{"hide"} or \code{"top"}.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' block_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Block picker color"),
#'     block_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     block_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
block_picker <- function(input_id, label, color = "#112446",
                         colors = NULL, triangle = "top",
                         inline = FALSE, width = NULL) {
  color_picker(
    picker = "BlockPicker",
    color = color,
    colors = colors,
    triangle = match.arg(triangle, choices = c("top", "hide")),
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Twitter Picker Input
#'
#' @template params
#' @param colors Vector of colors to include in the widget.
#' @param triangle Little arrow above the picker : \code{"hide"}, \code{"top-right"} or \code{"top-left"}.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' twitter_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Twitter picker color"),
#'     twitter_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     twitter_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
twitter_picker <- function(input_id, label, color = "#112446",
                           colors = NULL, triangle = "top-left",
                           inline = FALSE, width = NULL) {
  color_picker(
    picker = "TwitterPicker",
    color = color,
    colors = colors,
    triangle = match.arg(triangle, choices = c("top-left", "top-right", "hide")),
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Github Picker Input
#'
#' @template params
#' @param colors Vector of colors to include in the widget.
#' @param triangle Little arrow above the picker : \code{"hide"}, \code{"top-right"} or \code{"top-left"}.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' github_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Github picker color"),
#'     github_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     github_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
github_picker <- function(input_id, label, color = "#112446",
                          colors = NULL, triangle = "top-left",
                          inline = FALSE, width = NULL) {
  color_picker(
    picker = "GithubPicker",
    color = color,
    colors = colors,
    triangle = match.arg(triangle, choices = c("top-left", "top-right", "hide")),
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Compact Picker Input
#'
#' @template params
#' @param colors Vector of colors to include in the widget.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' compact_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Compact picker color"),
#'     compact_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     compact_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
compact_picker <- function(input_id, label, color = "#112446",
                           colors = NULL,
                           inline = FALSE, width = NULL) {
  color_picker(
    picker = "CompactPicker",
    color = color,
    colors = colors,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Circle Picker Input
#'
#' @template params
#' @param colors Vector of colors to include in the widget.
#' @param circle_size Number, Value for circle size.
#' @param circle_spacing Number, Value for spacing between circles.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' circle_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Circle picker color"),
#'     circle_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     circle_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
circle_picker <- function(input_id, label, color = "#112446",
                          colors = NULL, circle_size = 28,
                          circle_spacing = 14,
                          inline = FALSE, width = NULL) {
  color_picker(
    picker = "CirclePicker",
    color = color,
    colors = colors,
    circleSize = circle_size,
    circleSpacing = circle_spacing,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Hue Picker Input
#'
#' @template params
#' @param direction Direction for the widget: \code{"horizontal"} or \code{"vertical"}.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' hue_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Hue picker color"),
#'     hue_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     hue_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
hue_picker <- function(input_id, label, color = "#112446",
                       direction = "horizontal",
                       inline = FALSE, width = NULL) {
  color_picker(
    picker = "HuePicker",
    color = color,
    direction = match.arg(direction, c("horizontal", "vertical")),
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


#' Swatches Picker Input
#'
#' @template params
#' @param colors List of vector of colors to include in the widget.
#'
#' @export
#'
#' @examples
#' # See picker in Viewer (or browser)
#' swatches_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Swatch picker color"),
#'     swatches_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     swatches_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
swatches_picker <- function(input_id, label, color = "#112446",
                            colors = NULL,
                            inline = FALSE, width = NULL) {
  color_picker(
    picker = "SwatchesPicker",
    color = color,
    colors = colors,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}



#' Slider Picker Input
#'
#' @template params
#'
#' @noRd
#'
#' @examples
#' # See picker in Viewer (or browser)
#' slider_picker("id", "Pick!", inline = TRUE)
#'
#' # Shiny example
#' if (interactive()) {
#'
#'   library(shiny)
#'
#'   ui <- fluidPage(
#'     tags$h2("Slider picker color"),
#'     slider_picker("inline", "Pick!", inline = TRUE),
#'     verbatimTextOutput("res_inline"),
#'     slider_picker("btn", "Pick!", inline = FALSE),
#'     verbatimTextOutput("res_btn")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$res_inline <- renderPrint(input$inline)
#'     output$res_btn <- renderPrint(input$btn)
#'   }
#'
#'   shinyApp(ui, server)
#'
#' }
slider_picker <- function(input_id, label, color = "#112446",
                          inline = FALSE, width = NULL) {
  color_picker(
    picker = "SliderPicker",
    # color = color,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}


