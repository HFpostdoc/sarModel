#' augmentation 
#' @param n=seq(0,10,by=0.01)
#' @param s=1
#' @param d=5
#' @param aMin=1
#' @param aMax=2
augmentation <-
function(n=seq(0,10,by=0.01),s=1,d=5,aMin=1,aMax=2){
    ((aMax-aMin)/(1+exp(-s*(n - d)))) + aMin
}
