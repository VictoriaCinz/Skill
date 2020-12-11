FROM node

RUN mkdir /vika
WORKDIR /vika
COPY package.json /vika
RUN yarn install

COPY . /vika
RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000

