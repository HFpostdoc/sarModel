#' @title ppReturn 
#' 
#' Description ppReturn 
#' 
#' @param x x
#' @param thresh thresh
#' @param minutes minutes
#' @export ppReturn
#' @return ppReturn
ppReturn <- function(x,feed.time=720,thresh=0.00001,minutes=FALSE){
    o2 <- x$Oxygen
    days <- (length(o2)) / 1440
    mids <- seq((feed.time + 1) , (feed.time + 1 + (1440 *
                                                        (days-1))),by=1440)
    o2.mids <- o2[mids]
    feed.day <- head(((1:length(o2.mids))[o2.mids < o2.mids[1]]),1)
    o2.delta <- sum(o2.mids[c(feed.day,length(o2.mids))] * c(-1,1))
    time.delta <- sum(mids[c(feed.day,length(o2.mids))] * c(-1,1))
    if (!minutes){time.delta <- time.delta / 1440}
    rr <- o2.delta / time.delta
    return(rr)
}
