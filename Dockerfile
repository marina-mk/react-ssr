FROM node:lts-slim as build
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN yarn build
EXPOSE 8000
CMD ["yarn", "ssr"]
