FROM node
WORKDIR /app
COPY . .
RUN npm install dotenv && npm install mysql2 && npm install
ENV DB_HOST=172.17.0.2 \
    DB_USER=root \
    DB_PASSWORD=root123 \
    DB_NAME=example_db
EXPOSE 3000
CMD ["node","app.js"]
