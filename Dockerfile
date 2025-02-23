FROM maven:3.8.4-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17-jdk-slim
COPY --from=build/app/target/Backend-Spring-boot-0.0.1-SNAPSHOT.jar .
EXPOSE 5454
ENTRYPOINT ["java","-jar","app/Backend-Spring-boot-0.0.1-SNAPSHOT.jar"]