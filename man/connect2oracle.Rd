\name{connect2oracle}
\alias{connect2oracle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
connect2oracle(hostip = NA, db = NA, p = NA, driverlocation = "/lib/ojdbc6.jar")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hostip}{
%%     ~~Describe \code{hostip} here~~
}
  \item{db}{
%%     ~~Describe \code{db} here~~
}
  \item{p}{
%%     ~~Describe \code{p} here~~
}
  \item{driverlocation}{
%%     ~~Describe \code{driverlocation} here~~
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
function (hostip = NA, db = NA, p = NA, driverlocation = "/lib/ojdbc6.jar") 
{
    require(RJDBC)
    drv <- JDBC("oracle.jdbc.driver.OracleDriver", driverlocation)
    if (is.na(hostip)) {
        hostip = readline("enter hostip: ")
    }
    if (is.na(db)) {
        db = readline("enter db: ")
    }
    if (is.na(p)) {
        pwd = readline(paste("enter password for ", db, ": ", 
            sep = ""))
    }
    else {
        pwd <- p
    }
    ch <- dbConnect(drv, paste("jdbc:oracle:thin:@", hostip, 
        ":1521", sep = ""), db, pwd)
    return(ch)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
