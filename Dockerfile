# Use a imagem base do OpenJDK 21
FROM eclipse-temurin:21-jdk-jammy

# Diretório de trabalho
WORKDIR /app

# Copie o arquivo JAR para o container
COPY target/demo-*.jar app.jar

# Exponha a porta que a aplicação vai rodar
EXPOSE 8080

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]