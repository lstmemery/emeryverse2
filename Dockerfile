# Docker file for emeryverse
# Matthew Emery, Oct 18, 2016

# use ubuntu:latest as base image
FROM rocker/hadleyverse:latest

# get OS updates and install build tools
RUN apt-get update
RUN apt-get install -y build-essential

# install R dependencies
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('curl')"
RUN Rscript -e "install.packages('ezknitr')"


