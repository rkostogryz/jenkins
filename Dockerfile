FROM ubuntu:16.04
MAINTAINER Roman_Kostohryz
#Install main packages and jenkins
RUN apt update -y && apt upgrade -y &&\
    apt install wget -y
#Install Java 8
RUN apt install openjdk-8-jdk openjdk-8-jre -y &&\
    apt update -y
WORKDIR /home/app
#COPY /var/lib/jenkins/workspace/task_1.1/target/rd-1.0.${BUILD_NUMBER}-release.jar /var/lib/jenkins/workspace/docker/app
#mount  volumes
#VOLUME /var/lib/jenkins/workspace/docker/app
EXPOSE 8080
CMD ["java", "-jar", "agent1.jar"]
#CMD service docker start