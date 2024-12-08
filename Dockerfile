FROM jenkins/jenkins:lts

USER root


RUN apt-get update && apt-get install -y \
    rpm \
    dpkg-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


COPY count-files-1.0-1.noarch.rpm /usr/local/bin/
COPY deb-package.deb /usr/local/bin/

COPY count_files.sh /usr/local/bin/count_files.sh


RUN chmod +x /usr/local/bin/count_files.sh


USER jenkins


EXPOSE 8080
