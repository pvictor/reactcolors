#' @title Color Picker Inline
#'
#' @description Create a color picker among 13 available styles.
#'
#' @param inputId Widget id to retrieve value server-side.
#' @param color Default color.
#' @param ... Additional arguments passed to the picker.
#' @param picker Style of the picker.
#' @param width,height Width and height for the widget.
#'
#'
#' @importFrom htmlwidgets createWidget JS
#' @importFrom reactR reactMarkup component
#'
#' @export
#'
#' @examples
#'
#' # May not work weel in RStudio viewer
#' color_picker(
#'   inputId = "mypicker",
#'   picker = "Block",
#'   colors = c("#EFF3FF", "#C6DBEF", "#9ECAE1",
#'              "#6BAED6", "#3182BD", "#08519C")
#' )
color_picker <- function(inputId, color = "#FFFFFF", ...,
                         picker = c("SketchPicker", "BlockPicker", "ChromePicker", "CirclePicker",
                                    "CompactPicker", "GithubPicker", "HuePicker", "MaterialPicker",
                                    "PhotoshopPicker", "SliderPicker", "SwatchesPicker",
                                    "TwitterPicker", "AlphaPicker"),
                         width = NULL, height = NULL) {

  picker <- match.arg(arg = picker)

  # describe a React component to send to the browser for rendering.
  component <- component(
    name = picker,
    varArgs = c(list(
      color = color,
      onChangeComplete = JS(sprintf("function(color, event) {Shiny.setInputValue('%s', color.hex);}", inputId))
    ), list(...))
  )

  # create widget
  createWidget(
    name = 'react_color',
    reactMarkup(component),
    width = width,
    height = height,
    package = 'reactcolors',
    elementId = inputId
  )
}


# Called by HTMLWidgets to produce the widget's root element.
react_color_html <- function(id, style, class, ...) {
  htmltools::tagList(
    # Necessary for RStudio viewer version < 1.2
    reactR::html_dependency_corejs(),
    reactR::html_dependency_react(),
    reactR::html_dependency_reacttools(),
    htmltools::tags$span(
      id = id,
      class = "form-group shiny-input-container shiny-input-container-inline",
      class = class
    )
  )
}
