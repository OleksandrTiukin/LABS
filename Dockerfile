FROM jenkins/jenkins:lts

USER root


RUN apt-get update && apt-get install -y \
    rpm \
    dpkg-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


COPY count-files-1.0-1.noarch.rpm /tmp/
COPY deb-package.deb /tmp/


USER jenkins


EXPOSE 8080
