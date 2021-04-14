FROM azul/zulu-openjdk-alpine:11
ARG JAR_FILE=target/*.jar
RUN apk --no-cache add curl
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
