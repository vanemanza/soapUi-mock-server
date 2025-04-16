FROM tomcat:9-jre11

# Eliminar la aplicación ROOT por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar el archivo WAR
COPY war/mock-services.war /usr/local/tomcat/webapps/ROOT.war

# Puerto por defecto de Tomcat
EXPOSE 8080
