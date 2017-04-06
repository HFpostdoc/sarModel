#' @title ppAnoxia 
#' 
#' Description ppAnoxia 
#' 
#' @param x x
#' @param relative relative
#' @return ppAnoxia
ppAnoxia <- function(x,thresh=0.05,relative=TRUE){
    o2 <- x$Oxygen
    if (relative){out <- length(o2[o2 <= thresh]) / length(o2)}else{
        out <- length(o2[o2 <= thresh])
    }
    return(out)
}
