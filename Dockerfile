FROM node

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

RUN mkdir -p /resume
WORKDIR /resume
COPY resume.json /resume/resume.json
COPY package.json /resume/package.json
COPY package-lock.json /resume/package-lock.json
RUN npm install

