FROM java:openjdk-8

RUN apt-get update
RUN apt-get install zip
RUN apt-get install bash


ENV VERSION 1.14.0-rc.14
ADD https://s3-eu-west-1.amazonaws.com/maven.sequenceiq.com/releases/com/sequenceiq/cloudbreak-shell/$VERSION/cloudbreak-shell-$VERSION.jar /cloudbreak-shell.jar

COPY logback.xml /logback.xml

ADD start /start
ENTRYPOINT [ "/start" ]
