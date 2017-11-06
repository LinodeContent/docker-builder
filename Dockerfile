FROM keymetrics/pm2:6

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

# Bundle APP files
COPY package.json /home/nodejs/app
RUN npm install
COPY . /home/nodejs/app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn

# Show current folder structure in logs
RUN ls -al -R

CMD [ "pm2-docker", "start" ]
