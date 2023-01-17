FROM openjdk:8
#ARG JAR_FILE_PATH=build/libs/*.jar
#COPY ${JAR_FILE_PATH} app.jar
#EXPOSE 8081
#ENTRYPOINT ["java", "-jar", "/app.jar"]
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJAR

COPY --from=builder build/libs/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]