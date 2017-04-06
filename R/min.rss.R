#' min.rss 
#' @param data
#' @param par
min.rss <-
function(data,par){
    with(data, sum((ddso -  
                        ddsoSim(days,
                               fW,
                               beta = par[1],
                               k = par[2])[1:length(ddso)])^2))
}
