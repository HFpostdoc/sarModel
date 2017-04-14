#' @title ppTrend
#' 
#' Description ppTrend
#' 
#' @param x x
#' @param minutes minutes
#' @export ppTrend
#' @return ppTrend
ppTrend <- function(x,feed.time=720,thresh=0.00001,minutes=FALSE){
    o2 <- x$Oxygen - x$Control
    cor(o2,(1:length(o2)))
}
