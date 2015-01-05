#' create a new MG plot object
#' 
#' Specify data options and create a MG plot object.
#' 
#' @name MG
#' @param data data that at least has columns of \code{x_accessor} and \code{y_accessor}
#' @param missing_is_zero if true and if the data object is a time series, missing data points will be treated as zeros.
#' @param x_accessor the name of the element in the data that should be considered the x-accessor
#' @param y_accessor the name of the element in the data that should be considered the y-accessor
#' @param width the width of the output widget
#' @param height the height of the output widget
#' 
#' @seealso \url{https://github.com/mozilla/metrics-graphics/wiki/Data}
#' @export
MG <- function(data = NULL, ...) UseMethod("MG")

#' @export
MG.default <- function(data, ...) {
  MG.data.frame(as.data.frame(data), ...)
}

#' @rdname MG
#' @import htmlwidgets
#' @export
MG.data.frame <- function(data, missing_is_zero = NULL,
                          x_accessor = NULL, y_accessor = NULL,
                          width = NULL, height = NULL) {
  data_options <- list()
  data_options$data            <- data
  data_options$missing_is_zero <- missing_is_zero
  data_options$x_accessor      <- x_accessor
  data_options$y_accessor      <- y_accessor
  
  x <- list(data_options = data_options)
  
  htmlwidgets::createWidget(
    name    = 'MG',
    x,
    width   = width,
    height  = height,
    package = 'metricsgraphics'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
MGOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'MG', width, height, package = 'metricsgraphics')
}

#' Widget render function for use in Shiny
#'
#' @export
renderMG <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, MGOutput, env, quoted = TRUE)
}