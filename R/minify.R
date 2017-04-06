#' @title minify 
#' 
#' Description minify 
#' 
#' @param x x
#' @param p p
#' @return minify
minify <- function(x,p=1440){
    out <- list()
    n <- length(x)/p
    for (i in 1:n){out[[i]] <- min(x[(1+(p*(i-1))):((p*i)-1)])}
    return(unlist(out))
}
