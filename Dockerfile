# Stage 1: Build the React app
FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the app using Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build .
# Expose port 80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

