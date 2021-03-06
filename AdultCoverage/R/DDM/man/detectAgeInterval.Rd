% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{detectAgeInterval}
\alias{detectAgeInterval}
\title{Detect the age interval for some demographic data}
\usage{
detectAgeInterval(Dat, MinAge = 5, MaxAge = 70, ageColumn = "Age")
}
\arguments{
\item{Dat}{a \code{data.frame} containing a column called \code{Age}, or code{age}.}

\item{MinAge}{integer ignore ages below this age.}

\item{MaxAge}{integer ignore ages above this age.}

\item{ageColumn}{character string giving the name of the Age column \code{"Age"} assumed.}
}
\value{
integer the age interval. \code{NA} if this is not unique.
}
\description{
Since death distribution methods are primarily used in adult ages, it's OK to chop off the irregular infant and child age intervals (0,1], (1,5]. Further, if high ages are in different intervals this might also be a non-issue. In principal, the user should set \code{MinAge} and \code{MaxAge} to the same values used in the death distribution methods. Here we have some defaults that should almost always return the result \code{5} for standard abridged data, or \code{1} for single age data. Really there are not any other common age-specifications, but it is best to identify these and be explicit about them. We return a warning and \code{NA} if more than one age interval is used. It is assumed that ages refer to the lower bounds of age intervals, as is the standard in demography.
}
