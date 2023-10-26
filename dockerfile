FROM openjdk:8-jdk-alpine
COPY ./target/demo-0.0.1-SNAPSHOT.jar /tmp/app
WORKDIR /tmp/app
ENTRYPOINT [ "java","-jar","demo-0.0.1-SNAPSHOT.jar" ]
