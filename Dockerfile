FROM ubuntu:18.10

# Building the environement to compile and run ATLAS
# The software package is devolopped by The Wegmann Lab

MAINTAINER Yassine Souilmi <yassine.souilmi@adelaide.edu.au>

## Setting up the requirements
RUN apt-get update
RUN apt-get install -y \
	libarmadillo-dev \
	build-essential \
	gcc \
	git

## Setting up the environment and compilation
### Setting up the folders
RUN mkdir /app
WORKDIR /app/

### Cloning the latest version of the code from bitbucket
RUN git clone --depth 1 https://bitbucket.org/WegmannLab/atlas.git
WORKDIR /app/atlas
RUN make

### Addition the binary location to the PATH
ENV PATH="/app/atlas:$PATH"

## Adding specific bindpoints required by ACAD's hosts
RUN touch  /etc/localtime
RUN mkdir -p  /localscratch
