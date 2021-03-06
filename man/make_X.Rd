% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation-functions.R
\name{make_X}
\alias{make_X}
\title{Construct full data set with time-dependent covariate (TDC)}
\usage{
make_X(n = 500L, m = 30, te = -29:30, h0 = -2, f0 = function(t) {    
  0 * t }, fz = function(t, te, z) {     (-(te - min(te))/10 + 0.005 * (te -
  min(te))^2) * z }, fwindow = function(t, te) {     (te <= t) & (te >= t -
  30) }, rng_z = function(te) {     arima.sim(n = length(te), list(ar = c(0.8,
  -0.6))) })
}
\arguments{
\item{n}{Number of subjects to simulate.}

\item{m}{the number of follow up intervals (\code{t_end = 1:m})}

\item{te}{the vector of timepoints at which the TDC was observed}

\item{h0}{A constant component of the baseline hazard.}

\item{f0}{A function of time \code{t}, representing the smooth part of the
baseline hazard.}

\item{fz}{A function of time \code{t}, exposure time \code{te} and the TDC
\code{z}, representing the partial effect of \code{z} at \code{te} on the
hazard at \code{t}.}

\item{fwindow}{A function of time \code{t} and exposure time \code{te}
defining the "window of effectiveness" during which exposures affect the
hazard at time t. Should return \code{TRUE/FALSE}.}

\item{rng_z}{RNG for TDC $z(t_e)$, a function of \code{te}. Must return a
vector of same length as te.}
}
\description{
Construct full data set with time-dependent covariate (TDC)
}
\keyword{internal}
