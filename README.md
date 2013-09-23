Ralias
======

Pakage
---------------
This is a simplistic R package that makes the use of R even more
straightforward by providing utility functions and aliases for
usual tasks and commands. Feel free to take and contribute!

Installation
---------------
You can simply download the package and install it the regular way:

`R> install.packages('ralias_XYZ.tar.gz')`

Building 
---------------
To compile the package(documentation/pdf), you need:

* The R PACKAGE `roxygen2`
* `make` (GNU Make) 
* `Latex` (Only if you want to build the pdf manual).

Then, simply run:

`$ make all`

*Note that this also installs the package in R.*

To load the package automatically you can do something like this (Linux/Unix):

`echo "try(library(ralias))" >> ~/.Rprofile`




