% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cramer_v.R
\name{cramer_v}
\alias{cramer_v}
\title{Compute Cramer's V}
\usage{
cramer_v(x, y = NULL, correct = TRUE, ...)
}
\arguments{
\item{x}{a numeric vector or matrix. \code{x} and \code{y} can also
    both be factors.}

\item{y}{a numeric vector; ignored if \code{x} is a matrix.  If
    \code{x} is a factor, \code{y} should be a factor of the same length.}

\item{correct}{a logical indicating whether to apply continuity
    correction when computing the test statistic for 2 by 2 tables: one
    half is subtracted from all \eqn{|O - E|} differences; however, the
    correction will not be bigger than the differences themselves.  No correction
    is done if \code{simulate.p.value = TRUE}.}

\item{...}{other arguments passed to the function
\code{\link[stats]{chisq.test}()}.}
}
\description{
Compute Cramer's V, which measures the strength of the
 association between categorical variables.
}
\examples{

# Data preparation
df <- as.table(rbind(c(762, 327, 468), c(484, 239, 477)))
dimnames(df) <- list(
  gender = c("F", "M"),
  party = c("Democrat","Independent", "Republican")
)
df
# Compute cramer's V
cramer_v(df)

}
