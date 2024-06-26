% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bbousurv.R
\docType{data}
\name{bbousurv_sim3}
\alias{bbousurv_sim3}
\title{Simulated Data for Scenario 3}
\format{
A tibble with columns:
\describe{
\item{PopulationName}{Name of the population}
\item{Year}{The year the observation occurred}
\item{Month}{The month the observation occurred}
\item{StartTotal}{The total number of collared caribou at the start of the
month}
\item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
month}
\item{MortalitiesUncertain}{The total number of mortalities that were not
confirmed in that month}
}
}
\usage{
bbousurv_sim3
}
\description{
Data are simulated with \href{https://poissonconsulting.github.io/bbousims/}{\code{bbousims}} package.
This is a population spanning 20 years with negative trend on female adult survival
and additional annual variation on female adult survival and female calf survival.
Coverage is medium, with 50\% of groups observed and 25 collars.
}
\keyword{datasets}
