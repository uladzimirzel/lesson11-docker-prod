FROM 34.116.254.166:8083/boxfuse-in-docker:1.0.0

RUN apt update 
RUN apt install tomcat9
WORKDIR /usr/local/tomcat/
RUN COPY --from=build /root/boxfuse-sample-java-war-hello /usr/local/tomcat/webapps
EXPOSE 8080