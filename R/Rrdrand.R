#' Check for RDRAND support
#' @return A logical value indicating whether RDRAND is supported on the current system
#' @export
hasRDRAND <- function()
{
   .Call("Rrdrand_hasRDRAND", PACKAGE="Rrdrand")
}
