FROM 34.118.74.35:8123/boxfuse-docker:1.0.0

RUN apt update 
RUN apt install tomcat9
RUN apt install openjdk-17-jdk
WORKDIR /usr/local/tomcat/
COPY --from=build /root/boxfuse-sample-java-war-hello /usr/local/tomcat/webapps