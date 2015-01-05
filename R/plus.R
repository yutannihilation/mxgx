#' Add options by + operand
#' 
#' @name plus
#' @export
"+.MG" <- function(mg_plot, mg_option) {
  if(class(mg_option) == "MG_layout") update_MG_layout(mg_plot, mg_option)
}