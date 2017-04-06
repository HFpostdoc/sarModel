#' @title rescale 
#' 
#' Description rescale 
#' 
#' @param x
#' @param ro=c(0,100)
#' @param rn=c(0,1)
#' @return rescale
rescale <- function(x,ro=c(0,100),rn=c(0,1)){
    or <- max(ro) - min(ro)
    nr <- max(rn) - min(rn)
    (((x - min(ro)) * nr) / or) + min(rn)
}
