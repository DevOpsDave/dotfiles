# CURRENT_JAVA_VERSION is a variable that you can use in your shell prompt so that you always know what version of Java you are using.
# Use java 6
function j6() {
  export JAVA_HOME=`/usr/libexec/java_home -v '1.6*'`
  export MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=512M -Djavax.net.ssl.trustStore=${JAVA_HOME}/lib/security/cacerts"
  export CURRENT_JAVA_VERSION=6
}
# Use java 7
function j7() {
  export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'`
  export MAVEN_OPTS='-Xmx1024M -XX:MaxPermSize=512M -Djavax.net.ssl.trustStore=${JAVA_HOME}/jre/lib/security/cacerts'
  export CURRENT_JAVA_VERSION=7
}
# Use java 8
function j8() {
  export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`
  export MAVEN_OPTS='-Xmx1024M -XX:MaxPermSize=512M -Djavax.net.ssl.trustStore=${JAVA_HOME}/jre/lib/security/cacerts'
  export CURRENT_JAVA_VERSION=8
}
#Default to java 7
j7
 
PROMPT_COMMAND=prompt_command
# sets the command prompt
function prompt_command {
  # Added git branch detection.
  #export PS1="\[\e[33;1m\]$CURRENT_JAVA_VERSION\[\e[0m\]:\[\e[32;1m\]\W> \[\e[0m\]"
  export PS1="\[\e[33;1m\]$CURRENT_JAVA_VERSION\[\e[0m\]:\[\e[32;1m\]\W> \[\e[0m\]$(__git_ps1 "(%s): ")"
}
