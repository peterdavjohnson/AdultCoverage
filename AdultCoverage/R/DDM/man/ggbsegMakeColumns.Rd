% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bh.R
\name{ggbsegMakeColumns}
\alias{ggbsegMakeColumns}
\title{make the Bennett-Horiuchi quasi life table columns required by the second estimation method}
\usage{
ggbsegMakeColumns(codi, minA = 15, maxA = 75, agesFit, eOpen = NULL,
  deaths.summed = FALSE)
}
\arguments{
\item{codi}{a chunk of data (single sex, year, region, etc) with all columns required by \code{ggbseg()}}

\item{minA}{the minimum of the age range searched. Default 15}

\item{maxA}{the maximum of the age range searched. Default 75}

\item{agesFit}{vector of ages as passed in by \code{ggbsegCoverageFromYear)}}

\item{eOpen}{optional. A value for remaining life expectancy in the open age group.}

\item{deaths.summed}{logical. is the deaths column given as the total per age in the intercensal period (\code{TRUE}). By default we assume \code{FALSE}, i.e. that the average annual was given.}
}
\value{
codi, with many columns added, most importantly \code{$Cx}.
}
\description{
Called by \code{ggbsegCoverageFromYear()}. This simply modulates some code that would otherwise be repeated. Users probably don't need to call this function directly.
}
\details{
\code{agesFit} is a vector passed in from \code{ggbsegMakeColumns()}, and it was either estimated using the GGB automatic method there, or simply came from the argument \code{exact.ages} specified in \code{ggbseg()}. By default we just automatically estimate these. \code{eOpen} can be either user-specified, or it will be estimated automatically using \code{eOpenCD()}.
}
