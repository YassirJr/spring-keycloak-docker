FROM openjdk:17-jdk-alpine

# Add Maintainer Info
LABEL maintainer="yassir.jeraidi@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 1234 available to the world outside this container
EXPOSE 1234

# The application's jar file
ARG JAR_FILE=./server/target/keycloak-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]