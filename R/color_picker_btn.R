#' @title Color Picker with Button
#'
#' @description Create a color picker among 13 available styles.
#'
#' @param ... Arguments passed to the picker.
#' @param picker Style of the picker.
#' @param label Label for the button.
#' @param input_id Widget id to retrieve value server-side.
#' @param width,height Width and height for the widget.
#'
#'
#' @importFrom htmlwidgets createWidget JS
#' @importFrom reactR reactMarkup component
#'
#' @export
color_picker_btn <- function(...,
                             picker = c("SketchPicker", "BlockPicker", "ChromePicker", "CirclePicker",
                                        "CompactPicker", "GithubPicker", "HuePicker", "MaterialPicker",
                                        "PhotoshopPicker", "SliderPicker", "SwatchesPicker",
                                        "TwitterPicker", "AlphaPicker"),
                             label = NULL, input_id = NULL,
                             width = NULL, height = NULL) {

  picker <- match.arg(arg = picker)

  # describe a React component to send to the browser for rendering.
  component <- component(
    name = "ReactColorBtn",
    varArgs = list(
      label = label,
      component(
        name = picker,
        varArgs = list(...)
      )
    )
  )

  # create widget
  createWidget(
    name = 'react_color',
    reactMarkup(component),
    width = width,
    height = height,
    package = 'reactcolors',
    elementId = input_id
  )
}
