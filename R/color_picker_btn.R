#' @title Color Picker with Button
#'
#' @description Create a color picker among 13 available styles.
#'
#' @param inputId Widget id to retrieve value server-side.
#' @param color Default color.
#' @param picker Style of the picker.
#' @param width,height Width and height for the widget.
#'
#'
#' @importFrom htmlwidgets createWidget JS
#' @importFrom reactR reactMarkup component
#'
#' @export
color_picker_btn <- function(inputId, label, color = "#FFFFFF",
                         picker = c("SketchPicker", "BlockPicker", "ChromePicker", "CirclePicker",
                                    "CompactPicker", "GithubPicker", "HuePicker", "MaterialPicker",
                                    "PhotoshopPicker", "SliderPicker", "SwatchesPicker",
                                    "TwitterPicker", "AlphaPicker"),
                         width = NULL, height = NULL) {

  picker <- match.arg(arg = picker)

  # describe a React component to send to the browser for rendering.
  component <- component(
    name = "ReactColorBtn",
    varArgs = list(
      label = label
    )
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
