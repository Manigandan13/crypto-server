# Stage 1: Build the JAR file
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17.0.1-jdk-slim
WORKDIR /app
COPY --from=build /app/target/Backend-Spring-boot-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 5454
ENTRYPOINT ["java", "-jar", "demo.jar"]