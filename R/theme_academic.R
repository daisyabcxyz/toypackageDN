#' Adjust the layout of a plot
#'
#' @param base_size size of the plot
#'
#' @returns a plot with the input base size, a bold plot title in the center and no grid
#' @importFrom ggplot2 theme_classic theme element_blank element_text
#' @export
#'
#' @examples
#' library(ggplot2)
#' p<- ggplot(data = mtcars) + geom_point(aes(x= mpg, y= hp)) + labs(title = "plot_title")
#' p
#' p + theme_academic()
theme_academic <- function(base_size =12){
  ggplot2::theme_classic(base_size= base_size) +
  ggplot2::theme(plot.title = ggplot2::element_text(face="bold",hjust =0.5),
                 panel.grid.major = ggplot2::element_blank(),
                 panel.grid.minor = ggplot2::element_blank())

}
