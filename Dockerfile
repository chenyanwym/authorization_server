# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:17-oracle
# copy the packaged jar file into our docker image
COPY build/libs/authorization_server-1.0-SNAPSHOT.jar /app.jar
# set the startup command to execute the jar
CMD ["java", "-Denv=docker", "-jar", "/app.jar"]
