#' @title noiseSimulator 
#' 
#' Description noiseSimulator 
#' 
#' @param x0 x0
#' @param tf tf
#' @param a a
#' @param b b
#' @param r r
#' @param eta eta
#' @param FUN FUN
#' @param NOISE NOISE
#' @param verbose verbose
#' @export noiseSimulator
#' @return noiseSimulator
noiseSimulator <- function(x0,tf=100,a=1,b=1,r=1,eta=0,FUN,NOISE,verbose=FALSE){
    x <- x0
    for (t in 2:tf){
        if (verbose){print(t)}
        x[t] <- x[t-1] + (a - b*x[t-1] + r*get(FUN)(x[t-1])) + eta*get(NOISE)()
    }
    return(x)
}
