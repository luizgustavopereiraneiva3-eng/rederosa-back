
FROM eclipse-temurin:20-jdk-alpine

WORKDIR /app

COPY . .

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

RUN cp target/*.jar app.jar

EXPOSE 10000

CMD ["java", "-jar", "app.jar"]
