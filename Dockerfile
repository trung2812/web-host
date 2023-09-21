FROM tomcat:9.0.80-jdk21-openjdk-slim-bullseye

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD W4_21110808.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]