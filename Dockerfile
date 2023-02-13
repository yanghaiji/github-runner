FROM java:openjdk-8u111-alpine
WORKDIR /home/runner/work/github-runner/github-runner
ADD ./target/github-runner-1.0-SNAPSHOT.jar /opt/
EXPOSE 8080
CMD java -Xms2048m -Xmx2048m -Duser.timezone=GMT+8 -jar /opt/github-runner-1.0-SNAPSHOT.jar --spring.profiles.active=dev
