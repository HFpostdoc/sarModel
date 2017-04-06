#' @title ppHyst 
#' 
#' Description ppHyst 
#' 
#' @param x x
#' @param n1 n1
#' @param n2 n2
#' @param feedingTime feedingTime
#' @param tol tol
#' @export ppHyst
#' @return ppHyst
ppHyst <- function(x,n1,n2,feedingTime=720,tol=0){
    if (class(x) != 'numeric' & 
        (class(x) == 'data.frame' | class(x) == 'matrix')){
        x <- x$Oxygen
    }
    hyst.start <- (((n1+n2)*1440) + 1) - feedingTime
    hyst <- x[hyst.start:length(x)]
    if (n1 != 1 & any(x[1:1440] != x[1441:2880])){warning('n1! Check base values.')}
    base <- rep(x[1:1440],ceiling(I(length(hyst)/1440)))[-1:-feedingTime]
    dhb <- hyst - base
    min.dhb <- minify(dhb)
    ## return rate = time from last feeding to return to base
    rr.t <- (1:length(min.dhb))[abs(min.dhb) <= tol][1]
    if (is.na(rr.t)){rr.t <- length(min.dhb)}
    ## change in dbase from start of feeding to dbase=0 
    ## or last time when feeding would occur
    ## absolute and proportionate return rate = change 
    ## from initial feeding point
    arr <- (min.dhb[1] - min.dhb[rr.t]) / rr.t 
    prr <- (min.dhb[1] - min.dhb[rr.t]) / min.dhb[1] / rr.t 
    ## proportion cumulative O2 change from base
    ## i.e., how much O2 was porduced under hysteresis
    ## compared to the total that would have been
    ## produced without feeding
    acdb <- sum(hyst) - sum(base)
    pcdb <- (sum(hyst) - sum(base)) / sum(base) 
    ## output
    out <- c(return.time=rr.t,arr=arr,acdb=acdb,prr=prr,pcdb=pcdb)
    return(out)
}
