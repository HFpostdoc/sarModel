#' @title ddsoSim 
#' 
#' Description ddsoSim 
#' 
#' @param days
#' @param fW
#' @param beta
#' @param k
#' @return ddsoSim
ddsoSim <- function(days,fW,beta,k){
    x <- ppSim(days=days, 
                    beta = beta, 
                    k = k,
                    foodWeight = fW
                    )
}
