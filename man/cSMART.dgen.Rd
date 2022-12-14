% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cSMART.R
\name{cSMART.dgen}
\alias{cSMART.dgen}
\title{Function to generate object from the conditional parameters}
\usage{
cSMART.dgen(
  cell_mu = c(10, 8, 2, 4, -2, 3),
  cell_var = c(100, 100, 100, 100, 100, 100),
  cell_cor = c(0.1, 0.2, 0.15, 0.12, 0.11, 0.07),
  N = 200,
  m = 5,
  p_1 = 0.3,
  p_2 = 0.2,
  treatment.summary = F
)
}
\arguments{
\item{cell_mu}{a vector of conditional means.}

\item{cell_var}{a vector of conditional variances.}

\item{cell_cor}{a vector of conditional correlations.}

\item{N}{number of clusters to be generated.}

\item{m}{number of participants in a cluster.
This can be a numeric variable \code{m_1} in which case, it is assumed that the
number of participants in each cluster is \code{m_1}. This can also be a list of length N
where each element in the list corresponds to the number of participants in the cluster.}

\item{p_1}{probability of response of the first level treatment A_1 = 1}

\item{p_2}{probability of response of the first level treatment A_1 = -1}

\item{treatment.summary}{T/F to return the summary object}
}
\value{
a data.frame object of the generated data
}
\description{
Returns the data.frame object from the conditional parameters
(mean, variance, correlation), number of clusters, number of participants in each cluster,
response probabilities of the different first level treatment options.
conditional mean, variance, and correlation must be numerical lists of length 6 with each
element corresponding to the cells (1, 1, .), (1, 0, 1), (1, 0, -1), (-1, 1, .), (-1, 0, 1), and (-1, 0, -1)
encoded in (A1, R, A2) form.
}
