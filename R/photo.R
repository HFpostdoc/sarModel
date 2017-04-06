#' photo 
#' @param days=3
#' @param Amax=1
#' @param Amin=0
#' @param Aqe=0.3
#' @param LCP=0
#' @param start=0
#' @param amp=50
photo <-
function(days=3,Amax=1,Amin=0,Aqe=0.3,LCP=0,start=0,amp=50){
    out <- Amax * (1 - exp(-Aqe * (PAR(days,start,amp) - LCP)))
    out[out < Amin] <- Amin
    return(out)
}
