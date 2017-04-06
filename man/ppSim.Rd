\name{ppSim}
\alias{ppSim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ppSim(days = 5, foodWeight = 1, beta = 4.5e-06, d = 5, k = 2, Amax = 20, Amin = Amax/1.5, m = 0, aMax = 2, aMin = 1, s = 1, feedingTime = 720, c = 1, x0 = 0, w0 = 0, w.w = 75, photo.val = 1, Ascalar = 0.75, Bscalar = 1, bound.max = FALSE, verbose = FALSE, decycle = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{days}{
%%     ~~Describe \code{days} here~~
}
  \item{foodWeight}{
%%     ~~Describe \code{foodWeight} here~~
}
  \item{beta}{
%%     ~~Describe \code{beta} here~~
}
  \item{d}{
%%     ~~Describe \code{d} here~~
}
  \item{k}{
%%     ~~Describe \code{k} here~~
}
  \item{Amax}{
%%     ~~Describe \code{Amax} here~~
}
  \item{Amin}{
%%     ~~Describe \code{Amin} here~~
}
  \item{m}{
%%     ~~Describe \code{m} here~~
}
  \item{aMax}{
%%     ~~Describe \code{aMax} here~~
}
  \item{aMin}{
%%     ~~Describe \code{aMin} here~~
}
  \item{s}{
%%     ~~Describe \code{s} here~~
}
  \item{feedingTime}{
%%     ~~Describe \code{feedingTime} here~~
}
  \item{c}{
%%     ~~Describe \code{c} here~~
}
  \item{x0}{
%%     ~~Describe \code{x0} here~~
}
  \item{w0}{
%%     ~~Describe \code{w0} here~~
}
  \item{w.w}{
%%     ~~Describe \code{w.w} here~~
}
  \item{photo.val}{
%%     ~~Describe \code{photo.val} here~~
}
  \item{Ascalar}{
%%     ~~Describe \code{Ascalar} here~~
}
  \item{Bscalar}{
%%     ~~Describe \code{Bscalar} here~~
}
  \item{bound.max}{
%%     ~~Describe \code{bound.max} here~~
}
  \item{verbose}{
%%     ~~Describe \code{verbose} here~~
}
  \item{decycle}{
%%     ~~Describe \code{decycle} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (days = 5, foodWeight = 1, beta = 4.5e-06, d = 5, k = 2, 
    Amax = 20, Amin = Amax/1.5, m = 0, aMax = 2, aMin = 1, s = 1, 
    feedingTime = 720, c = 1, x0 = 0, w0 = 0, w.w = 75, photo.val = 1, 
    Ascalar = 0.75, Bscalar = 1, bound.max = FALSE, verbose = FALSE, 
    decycle = FALSE) 
{
    if (length(foodWeight) < days) {
        foodWeight <- rep(foodWeight, days)[1:days]
    }
    minute <- 1
    P <- photo(days, (Amax/Amax), (Amax/Amin - 1))
    if (decycle) {
        cyc <- P
    }
    if (feedingTime == 1) {
        w <- w0 + foodWeight[1]
    }
    else {
        w <- w0
    }
    n <- mineralization(x0, w[1], c)
    a <- augmentation(n[length(n)], s, d, aMin, aMax)
    B <- Amax * ((a * Bscalar) * (w[1]/(k + w[1])))
    A <- Amax * ((a * Ascalar) * P[1])
    x <- A[length(minute)] - (m + B[length(minute)])
    for (z in 1:days) {
        for (j in 1:1440) {
            if (verbose) {
                print(c(z, j, minute[length(minute)]))
            }
            minute <- c(minute, minute[length(minute)] + 1)
            wt <- decomp(w[length(minute) - 1], beta = beta, 
                w.w = w.w)
            if (j == feedingTime) {
                w <- c(w, wt + foodWeight[z])
            }
            else {
                w <- c(w, wt)
            }
            n <- c(n, mineralization(x[length(minute) - 1], w[length(minute)], 
                c))
            a <- c(a, augmentation(n[length(n)], s, d, aMin, 
                aMax))
            B <- c(B, (Amax * ((a[length(minute)] * Bscalar) * 
                (w[length(minute)]/(k + w[length(minute)])))))
            A <- c(A, (Amax * (a[length(minute)] * Ascalar) * 
                P[length(minute)]))
            x <- c(x, A[length(minute)] - (m + B[length(minute)]))
            if (is.na(x[length(x)])) {
                x[length(x)] <- 0
            }
            if (x[length(x)] < 0) {
                x[length(x)] <- 0
            }
            if (bound.max & x[length(x)] > aMax) {
                x[length(x)] <- aMax
            }
        }
    }
    minute <- minute[1:length(P)]
    Control <- (P * Amax * (augmentation(0, s, d, aMin, aMax) * 
        Ascalar))
    A <- A[1:length(P)]
    B <- B[1:length(P)]
    n <- n[1:length(P)]
    a <- a[1:length(P)]
    if (decycle) {
        x <- x[1:length(P)] - Control
    }
    else {
        x <- x[1:length(P)]
    }
    w <- w[1:length(P)]
    data <- data.frame(minute, x, Control, A, B, w, n, a)
    colnames(data) <- c("Minute", "Oxygen", "Control", "Photosynthesis", 
        "Biological Oxygen Demand", "Food Amount", "Nutrients", 
        "Augmentation Value")
    return(data)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
