FROM openjdk:8-jdk-alpine
EXPOSE 8084
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} app.jar
RUN echo "Docker image in progress..."
ENTRYPOINT ["java", "-jar", "app.jar"]
