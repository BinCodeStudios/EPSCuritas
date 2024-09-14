# Usa una imagen base de Java
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia tu archivo Java al contenedor
COPY Main.java /app/Main.java

# Compila el archivo Java
RUN javac Main.java

# Define el comando de inicio cuando el contenedor se ejecute
CMD ["java", "Main"]
