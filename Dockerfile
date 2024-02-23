
FROM amazoncorretto:17.0.0-alpine

ARG JAR_FILENAME=Services-Manager-Java-SpringBoot-1.0.jar

EXPOSE 5000
ADD target/$JAR_FILENAME /$JAR_FILENAME

ENV JAVA_OPTS=""
ENV APP_NAME=$JAR_FILENAME

ENTRYPOINT ["sh","-c","java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /$APP_NAME","-web -webAllowOthers -tcp -tcpAllowOthers -browser"]
