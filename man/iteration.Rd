% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iteration.R
\name{iteration}
\alias{iteration}
\title{Iteration step for the Splitting-Coalescence-Estimation Method (SCEM).}
\usage{
iteration(paths, U, bandwidth)
}
\arguments{
\item{paths}{A list of data frames, where each frame contains the data for one individual. Every
data frame should have two columns with names 'distance' and 'oxygen'.}

\item{U}{A list of vectors. Each element in the list is a vector of integers, corresponding
to individuals considered in one group.}

\item{bandwidth}{Denotes the order of the bandwidth that should be used in the estimation process.
bandwidth = k will mean that the bandwidth is n^k.}
}
\value{
A list containing the following components:

  \item{S1}{A set of individuals who are in the cluster}
  \item{U}{A set of individuals to be used in the next iteration.}
}
\description{
This function performs the iteration step. Detailed description can be found in Chazin et al. 2019, Supplemental Materials 1.
}
\examples{
\dontrun{
armenia_split = split(armenia,f = armenia$ID)
band = -0.33
p = length(armenia_split)
iteration(armenia_split,1:p,band)
}
}
