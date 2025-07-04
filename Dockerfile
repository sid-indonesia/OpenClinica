# Use an official Tomcat image
FROM tomcat:9.0-jdk11-temurin

# Remove the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the OpenClinica WAR file to the webapps directory
COPY ./OpenClinica-3.17.2/distribution/OpenClinica.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
