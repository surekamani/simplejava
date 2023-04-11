FROM tomcat:8.5.41-alpine
ADD /target/java-hello-world-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat
EXPOSE 8080



