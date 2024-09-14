# Usa la imagen base de Tomcat
FROM tomcat:9.0-jdk17-openjdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/local/tomcat/webapps/ROOT

# Copia tu aplicación a la carpeta ROOT de Tomcat
COPY ./WEB-INF ./WEB-INF
COPY ./css ./css
COPY ./jsp ./jsp
COPY ./IMG ./IMG
COPY ./index.jsp ./index.jsp

# Exponer el puerto 8080
EXPOSE 8080

# Inicia Tomcat
CMD ["catalina.sh", "run"]

