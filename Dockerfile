FROM jboss/wildfly:24.0.0.Final
ADD target/wiremock-war-deployment-0.0.1-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
