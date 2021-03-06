# Image operating system
from ubuntu:14.04 

#Set bash as shell
SHELL ["/bin/bash", "-c"]

# Install required packages
RUN apt-get -y update
#RUN apt-get install -y qemu linux-virtual #FIXIT: grub error
RUN apt-get install -y qemu linux-headers-generic

# Directory where our program will be executed
workdir /pint-os

#Copy contents of current folder to container directory
copy ./pintos/src/ /pint-os


# Enviromental Variables 
ENV PINTOS_HOME=/pint-os 
ENV GDB_MACROS=${PINTOS_HOME}/src/mis/gdb-macros
ENV PATH=$PINTOS_HOME/src/utils:${PATH}




