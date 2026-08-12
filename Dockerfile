FROM tomcat:jre25-temurin-noble
COPY /target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]