% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggb.R
\name{guessage}
\alias{guessage}
\title{which age is closest to the point clicked?}
\usage{
guessage(xvec, yvec, click, age)
}
\arguments{
\item{xvec}{\code{$rightterm}, as given by \code{ggbMakeColumns()}}

\item{yvec}{\code{$lefttterm}, as given by \code{ggbMakeColumns()}}

\item{click}{a point given by \code{locator(1)}}

\item{age}{ages present in dataset}
}
\value{
the age corresponding to the x,y pair of \code{$rightterm}, \code{$lefttterm} closest to the point clicked.
}
\description{
a utility function called by \code{ggbChooseAges()}.
}
