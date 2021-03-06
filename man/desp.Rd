% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Quality_checking.R
\name{desp}
\alias{desp}
\title{Apply despiking to a given subset}
\usage{
desp(xBlock1, xBlock2 = xBlock1, refBlock1, refBlock2 = refBlock1, z, c)
}
\arguments{
\item{xBlock1}{The double-differenced \code{var} time series with appropriate
block size.}

\item{xBlock2}{Serves for computing despiking threshold and can be from the
same block as \code{xBlock1} (default) or from the whole year (more
conservative when less data available).}

\item{refBlock1}{\code{var} values from appropriate block for finding
false-flagged spikes by comparison with scaled median absolute deviation.}

\item{refBlock2}{\code{var} values for computing median and mad from the same
block as \code{refBlock1} (default) or whole year (more conservative when
less data available).}

\item{z}{A numeric value. \eqn{MAD} scale factor.}

\item{c}{A numeric value. \code{\link{mad}} scale factor. Default is \code{3
* \link{mad} constant} (\code{i.e. 3 * 1.4826 = 4.4478}).}
}
\value{
A logical vector. \code{TRUE} values flag spikes.
}
\description{
This is a low level function not intended to be used on its own. It is
utilized by \code{\link{despikeLF}} that should be used instead.
}
\seealso{
use \code{\link{despikeLF}} instead.
}
