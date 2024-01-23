FROM 34.118.74.35:8123/boxfuse-docker:1.0.0

RUN apk update && apk add curl

RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.tar.gz
RUN mkdir /opt/tomcat
RUN tar xvzf apache-tomcat-9.0.84.tar.gz --strip-components 1 --directory /opt/tomcat && rm apache-tomcat-9.0.84.tar.gz
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/tomcat/webapps

CMD /opt/tomcat/bin/catalina.sh run