FROM mcr.microsoft.com/java/jdk:8-zulu-ubuntu
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]
