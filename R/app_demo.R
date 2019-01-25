
#' Color pickers showcase
#'
#' @export
#'
#' @importFrom shiny runApp
#'
#' @examples
#' if (interactive()) {
#'
#' app_demo()
#'
#' }
app_demo <- function() {
  runApp(appDir = system.file("appdemo", package = "reactcolors"))
}
