% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeFits_initial.R
\name{makeFits_initial}
\alias{makeFits_initial}
\title{Prepare results for cosine model fit with given initialization for two parameters.}
\usage{
makeFits_initial(paths, amplitude, intercept)
}
\arguments{
\item{paths}{A list of data frames, where each frame contains the data for one individual. Every
data frame should have two columns with names 'distance' and 'oxygen'.}

\item{amplitude}{Initial value for the amplitude parameter.}

\item{intercept}{Initial value for the intercept parameter.}
}
\value{
A data frame containing the following components:

\item{amplitude}{estimated amplitude}
\item{intercept}{estimated intercept}
\item{x0}{delay of the data}
\item{X}{period of the data}
\item{birth}{birth seasonality estimate}
\item{predictedMin}{predicted minimum for the oxygen isotope variable}
\item{predictedMax}{predicted maximum for the oxygen isotope variable}
\item{observedMin}{observed minimum for the oxygen isotope variable}
\item{observedMax}{observed minimum for the oxygen isotope variable}
\item{MSE}{mean squared error corresponding to the model fit for every individual}
\item{Pearson}{Pearson's R^2 corresponding to the model fit for every individual}
}
\description{
Performs the nonlinear least squares (NLS) regression method for the cosine
model, with the given initial values for amplitude and intercept. It fits the NLS method
as required, and then computes different quantities for the birth seasonality estimates
corresponding to different individuals.
}
\examples{
armenia_split = split(armenia,f = armenia$ID)
amp = seq(1,10,by=0.5)
int = seq(-25,0,by=0.5)
makeFits_initial(armenia_split,amp[1],int[1])
}
