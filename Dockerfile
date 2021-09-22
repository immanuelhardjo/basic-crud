FROM node:12

RUN mkdir /app
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

ENV PORT = 5000

EXPOSE 5000

CMD ["npm","start"]