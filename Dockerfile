FROM ubuntu:16.04
MAINTAINER Roman_Kostohryz
#Install main packages and jenkins
RUN apt update -y && apt upgrade -y &&\
    apt install wget -y
#Install Java 8
RUN apt install openjdk-8-jdk openjdk-8-jre -y &&\
    apt update -y
RUN wget 
WORKDIR /home/app/
#mount  volumes
#VOLUME /home/app
EXPOSE 8080
CMD ["java", "-jar", "rd-1.0.0-SNAPSHOT.jar"]
#CMD service jenkins start
