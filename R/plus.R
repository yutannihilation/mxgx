#' Add options by + operand
#' 
#' @name plus
#' @export
"+.MG" <- function(mg_plot, mg_option) {
  if(class(mg_option) == "MG_layout") return(update_MG_layout(mg_plot, mg_option))
  if(class(mg_option) == "MG_graphic") return(update_MG_graphic(mg_plot, mg_option))
}