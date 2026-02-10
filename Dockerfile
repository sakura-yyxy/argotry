FROM node:alpine3.20

WORKDIR /tmp

COPY . .

EXPOSE 3000/tcp

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl gcompat libc6-compat iproute2 coreutils &&\
    apk add --no-cache bash &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]

