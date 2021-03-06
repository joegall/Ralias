# The name of the program

PKG_DIR = ralias/
R_SOURCES := $(shell ls $(PKG_DIR)/R/*.R )
N = $(shell cat $(PKG_DIR)/DESCRIPTION |grep ^Package | cut --fields=2 --delimiter=: |sed s/\ //g)
V := $(shell cat $(PKG_DIR)/DESCRIPTION |grep ^Version  | cut --fields=2 --delimiter=: |sed s/\ //g)
R_TGZ := $(N)_$(V).tar.gz
R_PDF := $(N).pdf
vpath %.R  $(PKG_DIR)
PKG_NAME := ralias



all : $(R_TGZ) $(R_PDF)
	

$(R_PDF) : $(R_SOURCES)
	R CMD Rd2pdf --force $(PKG_NAME)

$(R_TGZ) : $(R_SOURCES)
	@echo "Roxygeniting:"
	@echo "library(roxygen2); roxygenise(\"$(PKG_NAME)\",roxygen.dir=$(\"PKG_DIR\"),copy.package=F,unlink.target=F)" | R --vanilla
	@echo "Building Package $(R_TGZ):"
	@R CMD build $(PKG_NAME)
	@echo "Installing $(PKG_NAME)"
	R CMD INSTALL $(PKG_NAME)*.tar.gz


clean:
	rm *.pdf *.tar.gz -f
