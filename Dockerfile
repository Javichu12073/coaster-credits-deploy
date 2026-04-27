# Usamos una versión de Java más moderna (Java 17) que no tiene ese error
FROM tomcat:9.0-jdk17-openjdk-slim

# Borramos las apps por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo WAR al servidor
COPY ROOT.war /usr/local/tomcat/webapps/

# Exponemos el puerto que usa Railway
EXPOSE 8080

CMD ["catalina.sh", "run"]
