
#' Change background color of a Shiny app
#'
#' @param color Hex code color to use as background
#' @param session The shiny session within which to call \code{set_bg_color}.
#'
#' @export
#'
#' @importFrom shiny insertUI getDefaultReactiveDomain
#' @importFrom htmltools singleton tags
#'
set_bg_color <- function(color, session = getDefaultReactiveDomain()) {
  force(session)
  insertUI(
    selector = "body", where = "afterBegin",
    ui = singleton(tags$head(tags$script(
      src = "reactcolors/set_bg.js"
    ))),
    immediate = TRUE, session = session
  )
  session$sendCustomMessage(
    type = "set_bg",
    message = list(color = color)
  )
}





