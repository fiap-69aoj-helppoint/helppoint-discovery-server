FROM openjdk:8-jdk-alpine

LABEL source="https://github.com/fiap-69aoj/helppoint-discovery-server" \
      maintainer="flavioso16@gmail.com"

ADD ./target/discovery-server-0.0.1-SNAPSHOT.jar discovery-server.jar

EXPOSE 9091

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "/discovery-server.jar"]