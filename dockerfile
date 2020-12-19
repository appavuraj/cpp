#This is the Base Image where the GCC compiler has to be taken
FROM gcc:latest

#Label has to be created in order to provide a version of the details
LABEL version="0.1"
LABEL author="appavuraj.murugavel@gmail.com"

#Copy the contents to image
COPY . /usr/src/test

#Set Workdir
WORKDIR /usr/src/test

#Execution of the Python hello-world
CMD ["g++", "-Wall", "-std=c++17", "main.cpp", "-o", "main"]
