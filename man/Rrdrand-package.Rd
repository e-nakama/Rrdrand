\name{Rrdrand-package}
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

  `hasRDRAND' returns either RdRand available by executing the CPUID. 

  if HasRDRAND return false of library load time, it does not change
  the RNGkind.

  if you do changed RNGkind("user") by manual operation
  and RdRand is not available, you get NaN.

  If you want to detach, it will be set to RNGkind of "default".
}
\details{
  \url{http://prs.ism.ac.jp/~nakama/Rrdrand}
}
\author{
  Ei-ji Nakama <nakama@com-one.com> and Junji NAKANO <nakanoj@ism.ac.jp>
 
  Maintainer: Ei-ji Nakama <nakama@com-one.com>
}
\keyword{utilities}
\examples{
  library(Rrdrand)
  if(hasRDRAND())
    print(RNGkind())
    print(runif(3))
}

