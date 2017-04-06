#' @title photo 
#' 
#' Description photo 
#' 
#' @param days days
#' @param Amax Amax
#' @param Amin Amin
#' @param Aqe Aqe
#' @param LCP LCP
#' @param start start
#' @param amp amp
#' @return photo
photo <- function(days=3,Amax=1,Amin=0,Aqe=0.3,LCP=0,start=0,amp=50){
    out <- Amax * (1 - exp(-Aqe * (PAR(days,start,amp) - LCP)))
    out[out < Amin] <- Amin
    return(out)
}
