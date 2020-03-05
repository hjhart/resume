FROM node

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
RUN apt-get update && apt-get install -y gconf-service libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxss1 libxtst6 libappindicator1 libnss3 libasound2 libatk1.0-0 libc6 ca-certificates fonts-liberation lsb-release xdg-utils wget

RUN mkdir -p /resume /home/resume
RUN useradd -u 8877 resume
WORKDIR /resume
RUN chown resume /resume /home/resume

USER resume

COPY resume.json /resume/resume.json
COPY package.json /resume/package.json
COPY package-lock.json /resume/package-lock.json
RUN npm install
