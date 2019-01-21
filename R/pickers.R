
#' Sketch Picker Input
#'
#' @param input_id Id to retrieve the widget value server side.
#' @param label Label to be display above the widget or on the button.
#' @param color Default color.
#' @param preset_colors Vector of colors to be displayed at the bottom of the widget.
#' @param inline Display the widget inline or when a button is clicked.
#' @param width Width for the widget.
#'
#' @export
#'
#' @examples
#' if (interactive()) {
#'
#'
#'
#' }
sketch_picker <- function(input_id, label, color = "#112446", preset_colors = NULL, inline = FALSE, width = NULL) {
  color_picker(
    type = "SketchPicker",
    color = color,
    presetColors = preset_colors,
    input_id = input_id,
    label = label,
    width = width,
    inline = inline
  )
}

