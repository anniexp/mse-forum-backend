FROM openjdk:17-alpine
WORKDIR /app
RUN apk add --no-cache maven
COPY . .
RUN mvn install -DskipTests
EXPOSE 8081
CMD ["java","-jar","target/forum-0.0.1-SNAPSHOT.jar"]

