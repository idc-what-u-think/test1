FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/idc-what-u-think/Firekid-XMD.git .

RUN npm install

RUN mkdir -p sessions

RUN mkdir -p commands

RUN chmod -R 755 /app

HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD ps aux | grep '[n]ode index.js' || exit 1
CMD ["npm", "start"]
