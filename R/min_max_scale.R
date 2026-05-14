#' Find the difference to the minimum value, with respect to the min-max difference
#'
#' @param x A list of numbers
#'
#' @returns A scale with respect to the the min-max difference
#' @export
#'
#' @examples
#' min_max_scale(1:3)
min_max_scale <- function(x)
{
  y <- (x - min(x, na.rm = TRUE))/(max(x, na.rm = TRUE)-min(x, na.rm = TRUE))
  return(y)
}
