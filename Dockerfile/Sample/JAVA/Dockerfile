FROM openjdk:17-jdk-alpine AS build

WORKDIR /app
COPY --from=build /build/libs/*.jar /app/app.jar
RUN apk upgrade --no-cache && apk add --no-cache curl
EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]