FROM node:18-alpine

WORKDIR /app

# Install git
RUN apk add --no-cache git

# Clone your repository
RUN git clone https://github.com/idc-what-u-think/Firekid-XMD.git .

# Install dependencies
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
