FROM openjdk:8-jdk-alpine
COPY ./target/demo-0.0.1-SNAPSHOT.jar ~/app
WORKDIR ~/app
ENTRYPOINT [ "java","-jar","demo-0.0.1-SNAPSHOT.jar" ]
