#' @title Carpenter lake model
#' 
#' Runs simulation of the Carpenter Lake model
#' 
#' @param x0
#' @param tf=100
#' @param a=1
#' @param b=1
#' @param r=1
#' @param FUN
#' @param verbose=FALSE
#' @return carpenterMod
carpenterMod <- function(x0,tf=100,a=1,b=1,r=1,FUN,verbose=FALSE){
    x <- x0
    for (t in 2:tf){
        if (verbose){print(t)}
        x[t] <- x[t-1] + (a - b*x[t-1] + r*get(FUN)(x[t-1]))
    }
    return(x)
}
