FROM tomcat:10.1.18-jre21-temurin-jammy

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/*.war /usr/local/tomcat/webapps/
