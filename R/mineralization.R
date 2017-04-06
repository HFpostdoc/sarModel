#' @title mineralization 
#' 
#' Description mineralization 
#' 
#' @param x x
#' @param w w
#' @param c c
#' @export mineralization
#' @return mineralization
mineralization <- function(x,w,c=100){
    (w * x)/c
}
