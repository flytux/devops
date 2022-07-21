# build stage
FROM 192.168.100.100:30005/node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm config set registry http://192.168.100.100:30881/repository/npm-devops.group/ -g
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM 192.168.100.100:30005/nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=build-stage /app/dist .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
