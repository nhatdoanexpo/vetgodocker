# Use Maven 3.8.6 and OpenJDK 18 to build the application
FROM maven:3.8.6-openjdk-18-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn clean package -Dmaven.test.skip

FROM nhatdoanexpo/vetgodeploy:v1.0 AS final
WORKDIR $HOME
COPY --from=build /app/target/zalo-bot-1.0.0.jar .
COPY csvetgoapp/browser-plugin browser-plugin
CMD ["java", "-jar", "zalo-bot-1.0.0.jar"]
