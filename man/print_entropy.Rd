% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print_methods.R
\name{print_entropy}
\alias{print_entropy}
\title{Prints the entropy of the different actions}
\usage{
print_entropy(entropy, digits = 3, print_all = FALSE)
}
\arguments{
\item{entropy}{The entropy measure from \code{calculate_entropy}}

\item{digits}{The number of digits to round to. Default 3.}

\item{print_all}{If TRUE will print all information on intermediary 
calculations}
}
\description{
The function prints the vector of entropies for each possible action. 
Depending on printing options, additional information about the probability
calculations can be provided.
}
\examples{
design <- matrix(c(-1, -1, -1, -1,  1,
                   -1,  0,  0, -1,  0,
                   -1,  0, -1,  0,  0,
                    0,  0, -1,  0, -1), nrow = 4, byrow = TRUE)

entropy <- calculate_entropy(design)

print_entropy(entropy)
print_entropy(entropy, digits = 4)
print_entropy(entropy, print_all = TRUE)

}
