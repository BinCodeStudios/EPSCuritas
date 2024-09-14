# Usa la imagen base de Tomcat 9
FROM tomcat:9.0-jdk17-openjdk-slim

# Elimina la aplicación ROOT por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia el archivo WAR de tu proyecto a Tomcat
COPY target/mi-aplicacion.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto 8080
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]


