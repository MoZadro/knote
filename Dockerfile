# FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
# ENV PORT 8080
# COPY target/*.jar /opt/app.jar
# WORKDIR /opt
# ENTRYPOINT exec java $JAVA_OPTS -jar app.jar


FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
ENV PORT 8080
COPY src /tmp/src/
WORKDIR /tmp/
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar