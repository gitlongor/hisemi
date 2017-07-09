\name{rt}
\alias{rt}
\title{ Pseudo-random number generation from t-distribution }
\description{
  This is a slightly modified implementation of \code{\link[stats:rt]{stats:rt}}. 
}
\usage{
rt(n, df, ncp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n, df}{ Exactly as in \code{\link[stats:rt]{stats:rt}}. }
  \item{ncp}{ A numeric vector of non-centrality parameters. }
}
\details{
  This function corrects the bug in \code{\link[stats:rt]{stats:rt}} that causes trouble when \code{ncp} is a vector. See \href{https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=17306}{Bug 17306}. 
}
\value{
  A numeric vector of length \code{n} which are pseudo-random numbers from the requested t-distribution. 
}

\author{ Long Qu modified the code of \code{\link[stats:rt]{stats:rt}}. 
}
\seealso{ \code{\link[stats:rt]{stats:rt}} }
\examples{
set.seed(99927220)
rt(5,1)  # central t
rt(5,1, 1:5*5) # noncetral t where stats:rt throws warnings
\dontrun{
rt(5,1, c(NA, 1:4*5)) # noncetral t where stats:rt returns all NaN's
rt(5,1, c(1:4*5, NA)) # noncetral t where stats:rt throws extra warnings 
}

}
\keyword{ distribution }% __ONLY ONE__ keyword per line
