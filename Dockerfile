FROM node

RUN npm install -g resume-cli
RUN apt-get install phantomjs
RUN mkdir -p /resume
WORKDIR /resume
COPY resume.json /resume/resume.json
