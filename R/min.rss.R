#' @title min.rss 
#' 
#' Description min.rss 
#' 
#' @param data data
#' @param par par
#' @export min.rss
#' @return min.rss
min.rss <- function(data,par){
    with(data, sum((ddso -  
                        ddsoSim(days,
                               fW,
                               beta = par[1],
                               k = par[2])[1:length(ddso)])^2))
}
