#!/bin/bash

# Build the container with ubuntu saucy and oracle jdk 7 installed
docker build -t ubuntu:saucy-openssh - < Dockerfile-openssh

# Build the container with ubuntu saucy and oracle jdk 7 installed
docker build -t ubuntu:saucy-oracle-jdk7 - < Dockerfile-oracle-jdk7

# Now create a container with tomcat 7 based on the ubuntu saucy and oracle jdk7
docker build -t ubuntu:saucy-tomcat7 - < Dockerfile-tomcat7

# Now create a container with jenkins based on the tomcat7 images
docker build -t ubuntu:saucy-jenkins-standalone - < Dockerfile-jenkins-standalone

# Now run the jenkins
docker run -p 8080:8080 ubuntu:saucy-jenkins-standalone

# retrieve the corresponding jenkins-cli from the jenkins running
wget http://localhost:8080/jnlpJars/jenkins-cli.jar

# Configure jenkins through jenkins-cli
java -jar jenkins-cli.jar -s http://localhost:8080/ help
java -jar jenkins-cli.jar -s http://localhost:8080/ list-plugins
java -jar jenkins-cli.jar -s http://localhost:8080/
