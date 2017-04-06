#' @title decomp 
#' 
#' Description decomp 
#' 
#' @param w w
#' @param beta beta
#' @param w w
#' @return decomp
decomp <- function(w,beta=4.5e-05,w.w=0.075){
    ### set to decompose a 75 um wasp
    ### over the course of 2880 minutes
    w * exp(-beta*w.w)
}
