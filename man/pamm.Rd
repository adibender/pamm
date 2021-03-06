% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pamfit.R
\name{pamm}
\alias{pamm}
\alias{is.pamm}
\alias{print.pamm}
\alias{summary.pamm}
\alias{plot.pamm}
\title{Fit a piece-wise exponential additive model}
\usage{
pamm(formula, data = list(), method = "REML", ...)

is.pamm(x)

\method{print}{pamm}(x, ...)

\method{summary}{pamm}(object, ...)

\method{plot}{pamm}(x, ...)
}
\arguments{
\item{formula}{ A GAM formula, or a list of formulae (see \code{\link{formula.gam}} and also \code{\link{gam.models}}). 
These are exactly like the formula for a GLM except that smooth terms, \code{\link{s}}, \code{\link{te}}, \code{\link{ti}} 
and \code{\link{t2}}, can be added to the right hand side to specify that the linear predictor depends on smooth functions of predictors (or linear functionals of these).
}

\item{data}{ A data frame or list containing the model response variable and 
covariates required by the formula. By default the variables are taken 
from \code{environment(formula)}: typically the environment from 
which \code{gam} is called.}

\item{method}{The smoothing parameter estimation method. \code{"GCV.Cp"} to use GCV for unknown scale parameter and
Mallows' Cp/UBRE/AIC for known scale. \code{"GACV.Cp"} is equivalent, but using GACV in place of GCV. \code{"REML"} 
for REML estimation, including of unknown scale, \code{"P-REML"} for REML estimation, but using a Pearson estimate 
of the scale. \code{"ML"} and \code{"P-ML"} are similar, but using maximum likelihood in place of REML. Beyond the 
exponential family \code{"REML"} is the default, and the only other option is \code{"ML"}.}

\item{...}{Further arguments passed to \code{\link[mgcv]{gam}}.}

\item{x}{Any R object.}

\item{object}{An object of class \code{pamm} as returned by \code{\link{pamm}}.}
}
\description{
Basically a wrapper around \code{\link[mgcv]{gam}}. However, we set
\code{family=poisson()}, \code{offset=data$offset} and \code{method="REML"}
by default. The first two can not be overriden. The \code{method} argument
can be specified as usually, but defaults to \code{GCV.cp} in \code{\link[mgcv]{gam}}.

Check if object is of class pamm
}
\seealso{
\code{\link[mgcv]{gam}}
}
\keyword{internal}
