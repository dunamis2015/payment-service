# Dockerfile for payment-service (Java)

FROM openjdk:17-jdk-slim

ENV API_KEY=SECRET_API_KEY
ENV ACCOUNT_SERVICE_URL=http://account-service:8081

ARG JAR_FILE=target/payment-service-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]