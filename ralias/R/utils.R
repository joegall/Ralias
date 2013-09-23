NULL
#' Gets the last element of a vector
#'
#' A utility function getting the last element of a vector or list.
#' 
#' @param a vector (atomic or list)
#' @return the last element of a container (e.g. vector of list)
#' @examples
#' last(1:30)
#' @export
last <- function(x){x[length(x)]}
NULL
#' Gets the last element of a vector
#'
#' A utility function to delete all the object from the global environement.
#' This is equivalent to \code{rm(list=ls())}.
#' 
#' @examples
#' a <- b <- c <- 1
#' ls()
#' rmall()
#' ls()
#' @export
rmall <- function() rm(envir=.GlobalEnv,list=ls(envir=.GlobalEnv))
NULL
