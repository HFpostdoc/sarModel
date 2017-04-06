\name{simPrey}
\alias{simPrey}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
simPrey(days = 30, prey.mass = 10, prey.rate = 3, perturb.mass = 10, perturb.rate = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{days}{
%%     ~~Describe \code{days} here~~
}
  \item{prey.mass}{
%%     ~~Describe \code{prey.mass} here~~
}
  \item{prey.rate}{
%%     ~~Describe \code{prey.rate} here~~
}
  \item{perturb.mass}{
%%     ~~Describe \code{perturb.mass} here~~
}
  \item{perturb.rate}{
%%     ~~Describe \code{perturb.rate} here~~
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
function (days = 30, prey.mass = 10, prey.rate = 3, perturb.mass = 10, 
    perturb.rate = 3) 
{
    fw <- rep(c(rep(0, prey.rate - 1), prey.mass), ceiling(days/prey.rate))[1:days]
    fw.perturb <- rep(c(rep(0, perturb.rate - 1), perturb.mass), 
        ceiling(days/perturb.rate))[1:days]
    fw + fw.perturb
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
