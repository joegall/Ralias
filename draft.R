#~  PURE ALIASES
a <- head
z <- tail
ipkg <- install.packages
p <- print


#~ UTILITIES
last <- function(x){x[length(x)]}
rmall <- function() rm(envir=.GlobalEnv,list=ls(envir=.GlobalEnv)) #Remove all objects from the global environment
pwd <- function(print(getwd())) #looks like unix function
