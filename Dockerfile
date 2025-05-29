# --- Stage 1: Build with Maven ---
FROM maven:3.9.5-eclipse-temurin-17 AS builder

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the rest of the source code
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# --- Stage 2: Run with JDK ---
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy jar from builder stage
COPY --from=builder /app/target/*.jar spring-k8s.jar

# Copy entrypoint.sh script
COPY entrypoint.sh /app/entrypoint.sh

# Set permissions for entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Expose port (optional)
EXPOSE 8080

# Default command
ENTRYPOINT ["/app/entrypoint.sh"]
