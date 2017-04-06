\name{ppHyst}
\alias{ppHyst}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ppHyst(x, n1, n2, feedingTime = 720, tol = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{n1}{
%%     ~~Describe \code{n1} here~~
}
  \item{n2}{
%%     ~~Describe \code{n2} here~~
}
  \item{feedingTime}{
%%     ~~Describe \code{feedingTime} here~~
}
  \item{tol}{
%%     ~~Describe \code{tol} here~~
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
function (x, n1, n2, feedingTime = 720, tol = 0) 
{
    if (class(x) != "numeric" & (class(x) == "data.frame" | class(x) == 
        "matrix")) {
        x <- x$Oxygen
    }
    hyst.start <- (((n1 + n2) * 1440) + 1) - feedingTime
    hyst <- x[hyst.start:length(x)]
    if (n1 != 1 & any(x[1:1440] != x[1441:2880])) {
        warning("n1! Check base values.")
    }
    base <- rep(x[1:1440], ceiling(I(length(hyst)/1440)))[-1:-feedingTime]
    dhb <- hyst - base
    min.dhb <- minify(dhb)
    rr.t <- (1:length(min.dhb))[abs(min.dhb) <= tol][1]
    if (is.na(rr.t)) {
        rr.t <- length(min.dhb)
    }
    arr <- (min.dhb[1] - min.dhb[rr.t])/rr.t
    prr <- (min.dhb[1] - min.dhb[rr.t])/min.dhb[1]/rr.t
    acdb <- sum(hyst) - sum(base)
    pcdb <- (sum(hyst) - sum(base))/sum(base)
    out <- c(return.time = rr.t, arr = arr, acdb = acdb, prr = prr, 
        pcdb = pcdb)
    return(out)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
