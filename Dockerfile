FROM node as nextjs

WORKDIR  /app

COPY package.json /app

RUN npm install

COPY . .

ENV PORT=3000

EXPOSE $PORT

VOLUME ["/app/pages"]

CMD ["npm", "run", "dev"]
