\name{augmentation}
\alias{augmentation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
augmentation(n = seq(0, 10, by = 0.01), s = 1, d = 5, aMin = 1, aMax = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{n} here~~
}
  \item{s}{
%%     ~~Describe \code{s} here~~
}
  \item{d}{
%%     ~~Describe \code{d} here~~
}
  \item{aMin}{
%%     ~~Describe \code{aMin} here~~
}
  \item{aMax}{
%%     ~~Describe \code{aMax} here~~
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
function (n = seq(0, 10, by = 0.01), s = 1, d = 5, aMin = 1, 
    aMax = 2) 
{
    ((aMax - aMin)/(1 + exp(-s * (n - d)))) + aMin
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
