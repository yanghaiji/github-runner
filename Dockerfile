FROM java:openjdk-8u111-alpine
# 调整时区
RUN rm -f /etc/localtime \
&& ln -sv /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
ADD target/github-runner-1.0-SNAPSHOT.jar /opt/
EXPOSE 8080
CMD java -Xms2048m -Xmx2048m -Duser.timezone=GMT+8 -jar /opt/github-runner-1.0-SNAPSHOT.jar --spring.profiles.active=dev
