#' @title maxify 
#' 
#' Description maxify 
#' 
#' @param x x
#' @param p p
#' @export maxify
#' @return maxify
maxify <- function(x,p=1440){
    out <- list()
    n <- length(x)/p
    for (i in 1:n){out[[i]] <- max(x[(1+(p*(i-1))):((p*i)-1)])}
    return(unlist(out))
}
