FROM tomcat:10.1-jdk21

RUN rm -rf /usr/local/tomcat/webapps/*

RUN perl -0pi -e 's/<Server port="8005" shutdown="SHUTDOWN">/<Server port="-1" shutdown="SHUTDOWN">/' /usr/local/tomcat/conf/server.xml

COPY AZOX-GYM.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
