# Usamos una imagen de Tomcat 10 (más moderna) con Java 17 parcheado
FROM tomcat:10.1-jdk17-temurin

# Borramos las apps por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo WAR
COPY ROOT.war /usr/local/tomcat/webapps/

# Railway usa el puerto 8080 por defecto
EXPOSE 8080

CMD ["catalina.sh", "run"]
