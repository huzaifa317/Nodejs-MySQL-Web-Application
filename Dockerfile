FROM node
WORKDIR /app
COPY . .
RUN npm install dotenv && npm install mysql2 && npm install
EXPOSE 3000
CMD ["node","app.js"]
