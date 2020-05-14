FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
#CMD ["npm", "run", "start"]

# /app/build <-- this will have all the stuff we need for deployment


FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
