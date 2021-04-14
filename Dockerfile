FROM azul/zulu-openjdk-alpine:11
ARG JAR_FILE=target/*.jar
RUN mkdir -p /sbapp
COPY ${JAR_FILE} /sbapp/app.jar
RUN chmod -R 777 /sbapp
ENTRYPOINT ["java","-jar","/sbapp/app.jar"]
