#' @title ddsoSim 
#' 
#' Description ddsoSim 
#' 
#' @param days days
#' @param fW fW
#' @param beta beta
#' @param k k
#' @return ddsoSim
ddsoSim <- function(days,fW,beta,k){
    x <- ppSim(days=days, 
                    beta = beta, 
                    k = k,
                    foodWeight = fW
                    )
}
