# Rrdrand

'Rrdrand' is an R package that utilizes the hardware random number generator (DRNG) on Intel CPUs with the RdRand instruction (Ivy Bridge and later). It provides a high-quality, hardware-based random number source for R.

## Installation

You can install the package from source:

```r
install.packages("Rrdrand", repos = NULL, type = "source")
```

Or from GitHub:

```r
# install.packages("devtools")
devtools::install_github("e-nakama/Rrdrand")
```

## Usage

Load the package and check if RDRAND is available:

```r
library(Rrdrand)
hasRDRAND()  # Returns TRUE if supported
```

If supported, the package automatically sets the RNG to use hardware random numbers. Generate random numbers:

```r
runif(5)  # Uniform random numbers
```

## Requirements

- Intel CPU with RdRand instruction (Ivy Bridge or later).
- R >= 4.5.0
- C compiler supporting GNU-style inline assembler.

## License

AGPL-3
