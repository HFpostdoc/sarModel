#' @title hill 
#' 
#' Description hill 
#' 
#' @param x x
#' @param p p
#' @param h h
#' @return hill
hill <- function(x,p=100,h=150){x^p / (x^p + h^p)}
