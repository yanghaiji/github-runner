FROM java:openjdk-8u111-alpine
FROM maven:3.8.7-eclipse-temurin-8-alpine
ENV MAVEN_HOME=/usr/share/maven
RUN mvn clean package
ADD target/*.jar /opt/
EXPOSE 8080
CMD java -Xms2048m -Xmx2048m -Duser.timezone=GMT+8 -jar /opt/github-runner-1.0-SNAPSHOT.jar --spring.profiles.active=dev
