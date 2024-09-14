# Usa la imagen base de Tomcat 9 con JDK 17
FROM tomcat:9.0-jdk17-openjdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/local/tomcat/webapps

# Elimina las aplicaciones de ejemplo de Tomcat para tener un entorno limpio
RUN rm -rf ROOT

# Copia todo el contenido de tu proyecto (incluyendo JSP, HTML, CSS, y recursos)
COPY ./WEB-INF ./WEB-INF
COPY ./css ./css
COPY ./login ./login
COPY ./crudAdmins ./crudAdmins
COPY ./crudCitas ./crudCitas
COPY ./crudLaboratorios ./crudLaboratorios
COPY ./actualizardatos ./actualizardatos
COPY ./IMG ./IMG
COPY ./index.html ./index.html

# Expone el puerto 8080 para el tráfico HTTP
EXPOSE 8080

# Configura el comando de inicio para Tomcat
CMD ["catalina.sh", "run"]
