#' Add graphic options to a MG plot object
#' 
#' @seealso \url{https://github.com/mozilla/metrics-graphics/wiki/Graphic}
#' 
#' @export
MG_graphic <- function(animate_on_load = NULL, area = NULL, baselines = NULL,
                       chart_type = NULL, custom_line_color_map = NULL, decimals = NULL,
                       error = NULL, format = NULL, interpolate = NULL, legend = NULL,
                       legend_target = NULL, linked = NULL, list = NULL, markers = NULL,
                       max_data_size = NULL, mouseover = NULL, mousemove = NULL,
                       mouseout = NULL, point_size = NULL, rollover_callback = NULL,
                       show_confidence_band = NULL, show_rollover_text = NULL, target = NULL,
                       transition_on_update = NULL, x_rug = NULL, y_rug = NULL){
  params <- list()
  
  params$animate_on_load <- animate_on_load
  params$area <- area
  params$baselines <- baselines
  params$chart_type <- chart_type
  params$custom_line_color_map <- custom_line_color_map
  params$decimals <- decimals
  params$error <- error
  params$format <- format
  params$interpolate <- interpolate
  params$legend <- legend
  params$legend_target <- legend_target
  params$linked <- linked
  params$list <- list
  params$markers <- markers
  params$max_data_size <- max_data_size
  params$mouseover <- mouseover
  params$mousemove <- mousemove
  params$mouseout <- mouseout
  params$point_size <- point_size
  params$rollover_callback <- rollover_callback
  params$show_confidence_band <- show_confidence_band
  params$show_rollover_text <- show_rollover_text
  params$target <- target
  params$transition_on_update <- transition_on_update
  params$x_rug <- x_rug
  params$y_rug <- y_rug
  
  structure(params, class = "MG_graphic")
}

#' Update graphic options
#' 
#' @name update_MG_graphic
#' @import plyr
#' @export
update_MG_graphic <- function(mg_plot, mg_graphic) {
  new_mg_plot <- mg_plot
  new_mg_plot$x$graphic_options <- defaults(mg_graphic, mg_plot$x$graphic_options)
  new_mg_plot
}