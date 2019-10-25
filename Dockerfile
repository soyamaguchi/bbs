FROM openjdk:11-jdk

VOLUME /tmp
RUN mkdir /app
WORKDIR /app

ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar target/bbs-0.0.1-SNAPSHOT.jar"]
