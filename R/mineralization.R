#' @title mineralization 
#' 
#' Description mineralization 
#' 
#' @param x
#' @param w
#' @param c=100
#' @return mineralization
mineralization <- function(x,w,c=100){
    (w * x)/c
}
