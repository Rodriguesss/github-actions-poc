FROM node:15

WORKDIR /usr/src/

COPY . . 

RUN npm i 

RUN npx prisma generate

CMD ["npm", "run", "dev:migrate"] 