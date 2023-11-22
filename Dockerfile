# Set OpenJDK 11 as the base image
FROM openjdk:11-jdk-slim

# Set /app as the working directory for Docker
WORKDIR /app

# Copy the HelloWorld.java file into the running Docker container
COPY HelloWorld.java .

# Compile the HelloWorld.java file
RUN javac HelloWorld.java

# Specify the command to run when the Docker container starts
CMD ["java", "HelloWorld"]
