NULL
#' Gets the last element of a vector
#'
#' A utility function getting the last element of a vector or list.
#' 
#' @param x a vector (atomic or list)
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
#' Sets the layout parameters for plotting
#'
#' A utility function to delete all the object from the global environement.
#' This is equivalent to \code{par(mfrow=c(nrow, ncol))}.
#' 
#' @param nrow number of rows
#' @param ncol number of columns
#'
#' @examples
#' layplot(3,2)
#' plot(1,1)
#' ##To revert to default
#' layplot()
#' plot(1,1)
#' @export
layplot <- function(nrow = 1, ncol = 1) par(mfrow=c(nrow, ncol))
NULL

