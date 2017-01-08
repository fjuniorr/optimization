#' Plot the graph of a function
#'
#'
#'
#' @param x \code{vector} points in the domain to evaluate the function
#' @param fun \code{function} to be evaluated

#' @export
graph <- function(x, fun) {
    ggplot(data.frame(x = x), aes(x = x)) +
        stat_function(fun = fun) +
        theme_bw()
}
