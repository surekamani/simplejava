FROM tomcat:8.5.41-alpine
ADD /target/java-hello-world.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat
EXPOSE 8080



