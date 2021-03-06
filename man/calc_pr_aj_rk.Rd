% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_entropy.R
\name{calc_pr_aj_rk}
\alias{calc_pr_aj_rk}
\title{Calculate Pr(a_j|r_k)}
\usage{
calc_pr_aj_rk(design)
}
\arguments{
\item{design}{A matrix with rows equal to the number of rules and columns
equal to the number of actions or a list of such matrices.}
}
\value{
An r x a matrix of probabilities
}
\description{
The function calculates the probability of an action conditional on a given
rule and is part of calculating the entropy of an action. The function is 
meant for internal use only.
}
