FROM node

RUN npm install -g resume-cli
RUN apt-get install phantomjs
RUN mkdir -p /resume
WORKDIR /resume
COPY resume.json /resume/resume.json

COPY install_all_themes.sh /tmp/
RUN /tmp/install_all_themes.sh

# This stuff below will install all the themes
