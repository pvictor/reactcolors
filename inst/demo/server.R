
#  ------------------------------------------------------------------------
#
# Title : Demo reactcolors - Server
#    By : Victor
#  Date : 2019-01-23
#
#  ------------------------------------------------------------------------


library(shiny)


function(input, output, session) {

  lapply(
    X = c("chrome", "compact", "circle", "block"),
    FUN = function(x) {

      output[[paste0(x, "_res_inline")]] <- renderPrint({
        input[[paste0(x, "_inline")]]
      })

      output[[paste0(x, "_res_btn")]] <- renderPrint({
        input[[paste0(x, "_btn")]]
      })


      observeEvent(input[[paste0(x, "_inline")]], {
        set_bg_color(input[[paste0(x, "_inline")]])
      })

      observeEvent(input[[paste0(x, "_btn")]], {
        set_bg_color(input[[paste0(x, "_btn")]])
      })

    }
  )

}
