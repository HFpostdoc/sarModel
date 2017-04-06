#' @title hill 
#' 
#' Description hill 
#' 
#' @param x
#' @param p=100
#' @param h=150
#' @return hill
hill <- function(x,p=100,h=150){x^p / (x^p + h^p)}
