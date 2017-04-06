\name{carpenterMod}
\alias{carpenterMod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
carpenterMod(x0, tf = 100, a = 1, b = 1, r = 1, FUN, verbose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x0}{
%%     ~~Describe \code{x0} here~~
}
  \item{tf}{
%%     ~~Describe \code{tf} here~~
}
  \item{a}{
%%     ~~Describe \code{a} here~~
}
  \item{b}{
%%     ~~Describe \code{b} here~~
}
  \item{r}{
%%     ~~Describe \code{r} here~~
}
  \item{FUN}{
%%     ~~Describe \code{FUN} here~~
}
  \item{verbose}{
%%     ~~Describe \code{verbose} here~~
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
function (x0, tf = 100, a = 1, b = 1, r = 1, FUN, verbose = FALSE) 
{
    x <- x0
    for (t in 2:tf) {
        if (verbose) {
            print(t)
        }
        x[t] <- x[t - 1] + (a - b * x[t - 1] + r * get(FUN)(x[t - 
            1]))
    }
    return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
