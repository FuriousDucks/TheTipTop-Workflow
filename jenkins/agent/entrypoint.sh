#!/bin/sh

set -e

if [ -n "${JENKINS_URL}" ]; then
  echo "Connecting to ${JENKINS_URL}"
  exec java ${JAVA_OPTS} -jar /usr/share/jenkins/agent.jar -jnlpUrl ${JENKINS_URL}/computer/${NODE_NAME}/slave-agent.jnlp -secret ${SECRET} ${JENKINS_TUNNEL} ${JENKINS_AGENT_NAME} ${JENKINS_URL}
else
  echo "No JENKINS_URL environment variable set"
  exit 1
fi