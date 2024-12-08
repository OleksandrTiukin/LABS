FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y rpm dpkg-dev docker.io

# Create the workspace
RUN mkdir -p /var/jenkins_home/workspace

USER jenkins

EXPOSE 8080
