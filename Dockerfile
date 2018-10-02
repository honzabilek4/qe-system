FROM node:8.10.0-alpine
EXPOSE 3000 9229
WORKDIR /home/app
COPY ./package.json /home/app
COPY ./package-lock.json /home/app
RUN npm install
COPY . /home/app
CMD ./scripts/start.sh
