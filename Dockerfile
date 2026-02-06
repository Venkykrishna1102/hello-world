FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the Maven-built JAR from the build step into the image
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]