FROM openjdk:8-jre-alpine
MAINTAINER Bertrand Roussel <broussel@sierrawireless.com>

RUN mkdir -p /opt/leshan
RUN adduser -S -h /opt/leshan -s /sbin/nologin leshan

ENV BASE_URL https://ci.eclipse.org/leshan/job/leshan/lastSuccessfulBuild/artifact/

ADD $BASE_URL/leshan-server-demo.jar /opt/leshan/
ADD $BASE_URL/leshan-bsserver-demo.jar /opt/leshan/
ADD $BASE_URL/leshan-client-demo.jar /opt/leshan/

EXPOSE 5683 5684 8080

ADD start.sh /opt/leshan/

RUN chown -R leshan:nogroup /opt/leshan
USER leshan
WORKDIR /opt/leshan
ENTRYPOINT ["/opt/leshan/start.sh"]

