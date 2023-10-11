FROM tomcat:9.0.80-jdk21-openjdk-slim-bullseye

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD W4.war /usr/local/tomcat/webapps/
ADD C5.war /usr/local/tomcat/webapps/
ADD C7.war /usr/local/tomcat/webapps/
ADD ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]