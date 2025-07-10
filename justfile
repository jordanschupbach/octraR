# NOTE: This file is solely for the developer. If you are a user, you likely
# just want to install this from CRAN or Github via devtools.

all: build

build:
	R CMD INSTALL --build --preclean . -l $HOME/R/library

install: build
	R CMD INSTALL --build . -l $HOME/R/library

clean:
	rm -f ./src/*.o
	rm -f ./src/**/*.o
	rm -f ./src/*.so
	rm -f octrar_*.tar.gz
