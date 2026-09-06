# we are not using JDK because we are not building the image we are only running project
FROM eclipse-temurin:21-jre

WORKDIR /app

# copy jar file from target folder to continer and rename it as app.jar
COPY target/*.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java" , "-jar" , "app.jar"]

