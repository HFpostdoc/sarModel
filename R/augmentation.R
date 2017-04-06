#' @title augmentation 
#' 
#' Description augmentation 
#' 
#' @param n n
#' @param s s
#' @param d d
#' @param aMin aMin
#' @param aMax aMax
#' @export augmentation
#' @return augmentation
augmentation <- function(n=seq(0,10,by=0.01),s=1,d=5,aMin=1,aMax=2){
    ((aMax-aMin)/(1+exp(-s*(n - d)))) + aMin
}
