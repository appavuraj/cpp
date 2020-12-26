#This is the Base Image where the GCC compiler has to be taken
FROM gcc:latest

#Label has to be created in order to provide a version of the details
LABEL version="0.1"
LABEL author="appavuraj.murugavel@gmail.com"

#Copy the contents to image
COPY . /usr/src/test

#Set Workdir
WORKDIR /usr/src/test

#Perform CPP Buildroutine.
#!NOTE : For Binary file has to be placed in a folder since docker fails with binary without directory!
RUN ["g++", "-Wall", "-std=c++17", "main.cpp", "-o", "/usr/src/test/main"]

#After successful build try to run final ouput
CMD ["/usr/src/test/main"]
