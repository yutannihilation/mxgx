#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
metricsgraphics <- function(data, width = NULL, height = NULL) {
  # create widget
  htmlwidgets::createWidget(
    name = 'metricsgraphics',
    data,
    width = width,
    height = height,
    package = 'metricsgraphics'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
metricsgraphicsOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'metricsgraphics', width, height, package = 'metricsgraphics')
}

#' Widget render function for use in Shiny
#'
#' @export
renderMetricsgraphics <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, metricsgraphicsOutput, env, quoted = TRUE)
}
