FROM maven:latest AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:20-jdk
COPY --from=build /target/MovieAPI-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080 
ENTRYPOINT [ "java", "-jar", "app.jar" ]