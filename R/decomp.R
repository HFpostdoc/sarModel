#' decomp 
#' @param w
#' @param beta=4.5e-05
#' @param w.w=0.075
decomp <-
function(w,beta=4.5e-05,w.w=0.075){
    ### set to decompose a 75 um wasp
    ### over the course of 2880 minutes
    w * exp(-beta*w.w)
}
