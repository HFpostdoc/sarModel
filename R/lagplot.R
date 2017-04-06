#' @title lagplot 
#' 
#' Description lagplot 
#' 
#' @param x x
#' @param k k
#' @param xlab xlab
#' @param ylab ylab
#' @param type type
#' @param std std
#' @param add add
#' @param col col
#' @param pch pch
#' @param cex cex
#' @param lwd lwd
#' @return lagplot
lagplot <- function(x,k=1,xlab,ylab,type='l',std=FALSE,add=FALSE,col='grey',pch=19,cex=1,lwd=1){
    if (missing(xlab)){xlab <- 'x'}
    if (missing(ylab)){ylab <- expression('x'[t+k])}
    if (std){x <- (x-mean(x))/sd(x)}
    x1 <- x[1:(length(x) - k)]
    x2 <- x[(k + 1):(length(x))]
    if (add){
        if (type == 'p'){
            points(x1,x2,xlab=xlab,ylab=ylab,col=col,pch=pch,cex=cex)
        }else{
            lines(x1,x2,xlab=xlab,ylab=ylab,col=col,lwd=lwd)
        }
    }else{
        plot(x1,x2,xlab=xlab,ylab=ylab,type=type,col=col,pch=pch,cex=cex,lwd=lwd)
    }
}
