FROM azul/zulu-openjdk-alpine:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /sbapp/app.jar
ENTRYPOINT ["java","-jar","/sbapp/app.jar"]
