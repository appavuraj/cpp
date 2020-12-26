#This is the Base Image where the GCC compiler has to be taken
FROM gcc:latest

#Label has to be created in order to provide a version of the details
LABEL version="0.1"
LABEL author="appavuraj.murugavel@gmail.com"

#Copy the contents to image
COPY . /usr/src/test

#Set Workdir
WORKDIR /usr/src/test

#Perform CPP Buildroutine
RUN ["g++", "-Wall", "-std=c++17", "main.cpp", "-o", "main"]

#Workaround to copy the binary to a dictory
COPY main /usr/sr/test/

#After successful build try to run final ouput
CMD ["/usr/src/test/main"]
