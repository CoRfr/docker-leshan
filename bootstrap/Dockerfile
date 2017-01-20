FROM openjdk:8-jre-alpine
MAINTAINER Bertrand Roussel <broussel@sierrawireless.com>

RUN mkdir -p /opt/leshan
ADD https://hudson.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/leshan-bsserver-demo.jar /opt/leshan/

EXPOSE 5683 5684 8080

WORKDIR /opt/leshan
ENTRYPOINT java -jar ./leshan-bsserver-demo.jar
