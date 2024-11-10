#' octrar
#'
#' R bindings to octra
#'
#' @docType package
#' @author Jordan Schupbach
#' @useDynLib octrar, .registration=TRUE
#' @exportPattern "^[[:alpha:]]+"
#' @name octrar
#' @include octrar
NULL


#' @export
hello_catz <- function() {
  print("Hello zomg catz!")
  42
}

#' Test example shapes
#' @param r Circle radius
#' @export
test_circle <- function(r = 42.0) {
  print("Creating a circle:")
  circle <- Circle(r)
  print("    Created circle")
  print(paste("Has radius: ", circle$radius()))
  print(paste("Has circumfrence: ", circle$perimeter()))
}
