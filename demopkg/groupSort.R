# create function to order x by grouping variable g
groupSort <- function(x, g, decreasing = FALSE) {
    ord <- order(g, decreasing = decreasing)
    x[ord]
}