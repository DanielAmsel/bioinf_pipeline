FROM debian:buster
RUN apt-get update && apt-get install -y git
RUN git clone --recursive https://github.com/AG-Boerries/MIRACUM-Pipe.git
RUN MIRACUM-Pipe/debian/setup.sh
RUN Rscript MIRACUM-Pipe/RScripts/install_packages.R
RUN MIRACUM-Pipe/tools/install.sh
