# Use Maven with Java 17 for Jenkins plugin compatibility
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside the container
WORKDIR /cloudbees-folder-plugin

# Copy all plugin files into the container
COPY . .

# Run tests using Maven
CMD ["mvn", "test"]
