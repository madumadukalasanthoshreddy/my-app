FROM tomcat:8
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/myweb.wa#
#/opt/tomcat9/wedapps
