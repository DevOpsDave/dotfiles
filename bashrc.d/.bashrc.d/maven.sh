#export MAVEN_OPTS="-Xmx1024M"
#export MAVEN_OPTS="-Xms256m -Xmx1g -XX:MaxPermSize=256m -server"
export MAVEN_OPTS='-Xmx1024M -Djavax.net.ssl.trustStore=/Users/<user-name>/.keys/cacerts -Djavax.net.ssl.trustStorePassword=changeit'
