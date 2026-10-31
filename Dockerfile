FROM node:22-alpine
WORKDIR /app
RUN apk add --no-cache python3 make g++ sqlite-dev
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
EXPOSE 80
ENV PORT=80
CMD ["npm", "start"]
