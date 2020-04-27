FROM openjdk:8u252-jre-slim
LABEL maintainer="urehman.bese16seecs@seecs.edu.pk"
VOLUME /tmp
EXPOSE 9090
ADD target/elixirApp-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]