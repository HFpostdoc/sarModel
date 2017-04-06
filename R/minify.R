#' @title minify 
#' 
#' Description minify 
#' 
#' @param x
#' @param p=1440
#' @return minify
minify <- function(x,p=1440){
    out <- list()
    n <- length(x)/p
    for (i in 1:n){out[[i]] <- min(x[(1+(p*(i-1))):((p*i)-1)])}
    return(unlist(out))
}
