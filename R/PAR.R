#' @title PAR 
#' 
#' Description PAR 
#' 
#' @param days days
#' @param start start
#' @param amp amp
#' @return PAR
PAR <- function(days=3,start=0,amp=100){
    amp * sin(2 * pi * rep((1:1440 + 1080 + start),days) * (1/1440))
}
