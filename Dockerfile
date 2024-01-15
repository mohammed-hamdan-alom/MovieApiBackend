FROM eclipse-temurin:20
EXPOSE 8080
ADD target/movie-api-app.jar movie-api-app.jar
ENTRYPOINT ["java", "-jar", "/movie-api-app.jar"]