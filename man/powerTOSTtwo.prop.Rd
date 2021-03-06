% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerTOSTtwo.prop.R
\name{powerTOSTtwo.prop}
\alias{powerTOSTtwo.prop}
\title{Power analysis for TOST for difference between two proportions using Z-test (pooled)}
\usage{
powerTOSTtwo.prop(alpha, statistical_power, prop1, prop2, N, low_eqbound_prop,
  high_eqbound_prop)
}
\arguments{
\item{alpha}{alpha used for the test (e.g., 0.05)}

\item{statistical_power}{desired power (e.g., 0.8)}

\item{prop1}{expected proportion in control condition}

\item{prop2}{expected proportion in the experimental condition}

\item{N}{sample size (e.g., 108)}

\item{low_eqbound_prop}{lower equivalence bounds (e.g., -0.05) expressed in proportion}

\item{high_eqbound_prop}{upper equivalence bounds (e.g., 0.05) expressed in proportion}
}
\value{
Calculate either achieved power, equivalence bounds, or required N.
Returns a string summarizing the power analysis, and a numeric variable for number of observations, equivalence bounds, or power.
}
\description{
Power analysis for TOST for difference between two proportions using Z-test (pooled)
}
\section{References}{

Silva, G. T. da, Logan, B. R., & Klein, J. P. (2008). Methods for Equivalence and Noninferiority Testing. Biology of Blood and Marrow Transplantation: Journal of the American Society for Blood and Marrow Transplantation, 15(1 Suppl), 120-127. https://doi.org/10.1016/j.bbmt.2008.10.004
Julious, S. A. & Campell, M. J. (2012). Tutorial in biostatistics: sample sizes for parallel group clinical trials with binary data. Statistics in Medicine, 31:2904-2936.
Chow, S.-C., Wang, H., & Shao, J. (2007). Sample Size Calculations in Clinical Research, Second Edition (2 edition). Boca Raton: Chapman and Hall/CRC.
}

\examples{
## Sample size for alpha = 0.05, 90\% power, assuming true effect prop1 = prop 2 = 0.5,
## equivalence bounds of 0.4 and 0.6 (so low_eqbound_prop = -0.1 and high_eqbound_prop = 0.1)

powerTOSTtwo.prop(alpha=0.05, statistical_power=0.9, prop1 = 0.5, prop2 = 0.5, low_eqbound_prop=-0.1, high_eqbound_prop=0.1)

## Power for alpha = 0.05, N 542 , assuming true effect prop1 = prop 2 = 0.5,
## equivalence bounds of 0.4 and 0.6 (so low_eqbound_prop = -0.1 and high_eqbound_prop = 0.1)

powerTOSTtwo.prop(alpha=0.05, N=542, prop1 = 0.5, prop2 = 0.5, low_eqbound_prop=-0.1, high_eqbound_prop=0.1)

## Equivalence bounds for alpha = 0.05, N 542 , assuming true effect prop1 = prop 2 = 0.5,
## and 90\% power

powerTOSTtwo.prop(alpha=0.05, statistical_power=0.9, N=542, prop1 = 0.5, prop2 = 0.5)

#Example 4.2.4 from Chow, Wang, & Shao (2007, p. 93)
powerTOSTtwo.prop(alpha=0.05, statistical_power=0.8, prop1 = 0.75, prop2 = 0.8, low_eqbound_prop=-0.2, high_eqbound_prop=0.2)

# Example 5 from Julious & Campbell (2012, p. 2932)
powerTOSTtwo.prop(alpha=0.025, statistical_power=0.9, prop1 = 0.8, prop2 = 0.8, low_eqbound_prop=-0.1, high_eqbound_prop=0.1)
# From Machin, D. (Ed.). (2008). Sample size tables for clinical studies (3rd ed). Hoboken, NJ: Wiley-Blackwell.

# Example 9.4b equivalence of two proportions (p. 113) #
powerTOSTtwo.prop(alpha=0.010, statistical_power=0.8, prop1 = 0.5, prop2 = 0.5, low_eqbound_prop=-0.2, high_eqbound_prop=0.2)/2
}
