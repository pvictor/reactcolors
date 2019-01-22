
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
#'
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
#'
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
#'
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
#'
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

