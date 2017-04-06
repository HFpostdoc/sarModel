#' @title noiseSimulator 
#' 
#' Description noiseSimulator 
#' 
#' @param x0
#' @param tf=100
#' @param a=1
#' @param b=1
#' @param r=1
#' @param eta=0
#' @param FUN
#' @param NOISE
#' @param verbose=FALSE
#' @return noiseSimulator
noiseSimulator <- function(x0,tf=100,a=1,b=1,r=1,eta=0,FUN,NOISE,verbose=FALSE){
    x <- x0
    for (t in 2:tf){
        if (verbose){print(t)}
        x[t] <- x[t-1] + (a - b*x[t-1] + r*get(FUN)(x[t-1])) + eta*get(NOISE)()
    }
    return(x)
}
