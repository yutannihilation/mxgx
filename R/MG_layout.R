#' Add layout options to a MG plot object
#' 
#' @param buffer the buffer size in pixels between the actual chart area and the margins
#' @param buttom the size of the bottom margin in pixels
#' @param height the height of the entire graphic in pixels
#' @param left the size of the left margin in pixels
#' @param right the size of the right margin in pixels
#' @param small_height_threshold the height threshold in pixels for when the axis labels for a chart ought to be reduced in size
#' @param small_width_threshold the width threshold in pixels for when the axis labels for a chart ought to be reduced in size
#' @param top the size of the top margin in pixels
#' @param width the width of the entire graphic in pixels
#' 
#' @seealso \url{https://github.com/mozilla/metrics-graphics/wiki/Layout}
#' @export
MG_layout <- function(buffer = NULL, buttom = NULL, height = NULL, left = NULL, right = NULL, 
                      small_height_threshold = NULL, small_width_threshold = NULL,
                      top = NULL, width = NULL) {
  params <- list()
  params$buffer <- buffer
  params$buttom <- buttom
  params$height <- height
  params$left   <- left
  params$right  <- right
  params$small_height_threshold <- small_height_threshold
  params$small_width_threshold <- small_width_threshold
  params$top    <- top
  params$width  <- width 
  
  
  structure(params, class = "MG_layout")
}

#' Update layout options
#' 
#' @name update_MG_layout
#' @import plyr
#' @export
update_MG_layout <- function(mg_plot, mg_layout) {
  new_mg_plot <- mg_plot
  new_mg_plot$x$layout_options <- defaults(mg_layout, mg_plot$x$layout_options)
  new_mg_plot
}