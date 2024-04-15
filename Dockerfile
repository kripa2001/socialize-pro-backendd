FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start server
CMD ["node", "server.js"]
