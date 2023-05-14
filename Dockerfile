FROM node:16-alpine

RUN mkdir /fileless
COPY memrun.go /fileless
RUN chmod +x /fileless/memrun.go

WORKDIR /usr/src/app

RUN touch /tmp/ready
COPY ./app/package*.json ./
RUN npm install
COPY ./app .

EXPOSE 3000
CMD ["npm", "start"]
