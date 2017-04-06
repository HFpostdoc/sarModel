\name{lagit}
\alias{lagit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
lagit(x, k = 1, xlab, ylab, type = "l", std = FALSE, add = FALSE, col = "grey", pch = 19, cex = 1, lwd = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{k}{
%%     ~~Describe \code{k} here~~
}
  \item{xlab}{
%%     ~~Describe \code{xlab} here~~
}
  \item{ylab}{
%%     ~~Describe \code{ylab} here~~
}
  \item{type}{
%%     ~~Describe \code{type} here~~
}
  \item{std}{
%%     ~~Describe \code{std} here~~
}
  \item{add}{
%%     ~~Describe \code{add} here~~
}
  \item{col}{
%%     ~~Describe \code{col} here~~
}
  \item{pch}{
%%     ~~Describe \code{pch} here~~
}
  \item{cex}{
%%     ~~Describe \code{cex} here~~
}
  \item{lwd}{
%%     ~~Describe \code{lwd} here~~
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
function (x, k = 1, xlab, ylab, type = "l", std = FALSE, add = FALSE, 
    col = "grey", pch = 19, cex = 1, lwd = 1) 
{
    if (missing(xlab)) {
        xlab <- "x"
    }
    if (missing(ylab)) {
        ylab <- expression("x"[t + k])
    }
    if (std) {
        x <- (x - mean(x))/sd(x)
    }
    x1 <- x[1:(length(x) - k)]
    x2 <- x[(k + 1):(length(x))]
    return(data.frame(x = x1, y = x2))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
