% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polyfreqs_pps.R
\name{polyfreqs_pps}
\alias{polyfreqs_pps}
\title{Posterior predictive model checks for polyfreqs}
\usage{
polyfreqs_pps(p_post, tM, rM, ploidy, error)
}
\arguments{
\item{p_post}{A matrix containing the posterior samples from a \code{\link{polyfreqs}} run.}

\item{tM}{Total reads matrix: matrix containing the total number of reads mapping to each locus for each individual.}

\item{rM}{Reference reads marix: matrix containing the number of reference reads mapping to each locus for each individual.}

\item{ploidy}{Ploidy level of individuals in the population.}

\item{error}{The level of sequencing error. A fixed constant.}
}
\value{
A list with two items:
\describe{
 \item{ratio_diff}{The posterior predictive samples of the difference between the simulated read ratios and the observed read ratio summed across individuals at each locus.}
 \item{locus_fit}{A logical vector indicating whether or not each locus passed or failed the posterior predictive model check.}
}
}
\description{
Uses the posterior distribution of allele frequences from a \code{\link{polyfreqs}} run to test model fit using the posterior predictive model checking procedure described in Blischak \emph{et al}.
}
\details{
The observed read count ratio (r/t) for each locus is summed across individuals and then compared to a distribution of read ratios simulated using the posterior allele frequencies by taking their difference.
The criterion for passing/failing the posterior predictive check is then made on a per locus basis based on whether or not the distribution of read ratio differences contains 0 in the 95% higherst posterior density interval.
}
\references{
Blischak PD, LS Kubatko and AD Wolfe. Accounting for genotype uncertainty in the estimation of allele frequencies in autopolyploids. \emph{In revision}.
}

