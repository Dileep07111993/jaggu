# Use official Tomcat 9 image with JDK 8 (Amazon Corretto)
FROM tomcat:9-jdk8-corretto

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove default apps (optional, cleaner image)
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy your WAR file into Tomcat (rename to ROOT.war to auto-deploy as root context)
# Replace "your-app.war" with the actual WAR file
COPY ./jaggu/target/*.war $CATALINA_HOME/webapps/ROOT.war

# Expose the port Tomcat runs on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

