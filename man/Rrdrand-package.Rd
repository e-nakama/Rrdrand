\name{Rrdrand-package}
\alias{Rrdrand-package}
\alias{hasRDRAND}

\usage{
hasRDRAND()
}
\docType{package}
\title{
  DRNG(Digital Random Numbers Generate) on Intel CPUs with the RdRand instruction for R
}
\description{
  Make use of the hardware random number accessed by the RdRand
  instruction in recent Intel CPUs (Ivy Bridge and later).

  This library defines the user_unif_rand symbol and gives back a
  random number of RdRand.

  `hasRDRAND' returns whether RdRand is available by executing the CPUID instruction.

  If hasRDRAND returns FALSE at library load time, it does not change
  the RNGkind.

  If you manually change RNGkind("user") and RdRand is not available, you get NaN.

  If you want to detach, it will be set to RNGkind of "default".
}
\details{
  \url{https://github.com/e-nakama/Rrdrand}
}
\author{
  Ei-ji Nakama <nakama@ki.rim.or.jp> and Junji NAKANO <nakanoj@ism.ac.jp>
 
  Maintainer: Ei-ji Nakama <nakama@ki.rim.or.jp>
}
\keyword{utilities}
\examples{
  library(Rrdrand)
  if(hasRDRAND())
    print(RNGkind())
    print(runif(3))
}

