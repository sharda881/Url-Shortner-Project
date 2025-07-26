# Stage 1: Build the application using Maven
FROM maven:3.9.3-eclipse-temurin-17 AS build

# Create app directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the jar file from the previous stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port (Render sets PORT env variable)
EXPOSE 3000

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
