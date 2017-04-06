#' simPrey
#' @param days = 30, 
#' @param prey.mass = 10
#' @param prey.rate = 3
#' @param perturb.mass = 10
#' @param perturb.rate = 3
simPrey <-
function(days = 30, prey.mass = 10,prey.rate = 3,perturb.mass = 10, perturb.rate = 3){

    fw <- rep(c(rep(0,prey.rate - 1),prey.mass),ceiling(days / prey.rate))[1:days]
    fw.perturb <- rep(c(rep(0,perturb.rate - 1),perturb.mass),ceiling(days / perturb.rate))[1:days]
    fw + fw.perturb

}
