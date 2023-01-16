FROM openjdk:8
#CMD ["./mvnw", "clean", "package"]
RUN ./gradlew bootJar
ARG JAR_FILE_PATH=build/libs/*.jar
COPY ${JAR_FILE_PATH} app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]
