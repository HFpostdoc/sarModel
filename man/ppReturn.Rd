\name{ppReturn}
\alias{ppReturn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ppReturn(x, feed.time = 720, thresh = 1e-05, minutes = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{feed.time}{
%%     ~~Describe \code{feed.time} here~~
}
  \item{thresh}{
%%     ~~Describe \code{thresh} here~~
}
  \item{minutes}{
%%     ~~Describe \code{minutes} here~~
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
function (x, feed.time = 720, thresh = 1e-05, minutes = FALSE) 
{
    o2 <- x$Oxygen
    days <- (length(o2))/1440
    mids <- seq((feed.time + 1), (feed.time + 1 + (1440 * (days - 
        1))), by = 1440)
    o2.mids <- o2[mids]
    feed.day <- head(((1:length(o2.mids))[o2.mids < o2.mids[1]]), 
        1)
    o2.delta <- sum(o2.mids[c(feed.day, length(o2.mids))] * c(-1, 
        1))
    time.delta <- sum(mids[c(feed.day, length(o2.mids))] * c(-1, 
        1))
    if (!minutes) {
        time.delta <- time.delta/1440
    }
    rr <- o2.delta/time.delta
    return(rr)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
