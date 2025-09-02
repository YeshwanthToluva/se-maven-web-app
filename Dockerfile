FROM tomcat:9.0

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat's webapps folder and rename it to ROOT.war for root context
COPY target/web-1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080
