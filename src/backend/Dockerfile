# syntax=docker/dockerfile:1.7

# Build stage with Maven and JDK 11
FROM maven:3.9.8-eclipse-temurin-11 AS builder

WORKDIR /app

COPY pom.xml .
RUN --mount=type=cache,target=/root/.m2 mvn -B dependency:go-offline

COPY src ./src
RUN --mount=type=cache,target=/root/.m2 mvn -B clean package -DskipTests

# Development stage
FROM builder AS dev
EXPOSE 8080
CMD ["mvn", "spring-boot:run"]

# Production runtime
FROM eclipse-temurin:11-jre-jammy AS prod

WORKDIR /app
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --system appgroup \
    && useradd --system --gid appgroup appuser
COPY --from=builder /app/target/*.jar /app/app.jar
RUN chown -R appuser:appgroup /app
USER appuser

EXPOSE 8080
ENV SERVER_PORT=8080 \
    JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0"

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s --retries=3 \
  CMD curl -fsS http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
