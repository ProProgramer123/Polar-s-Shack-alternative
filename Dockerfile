# Use official Node.js LTS image
FROM node:24

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci --only=production

# Copy all project files
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 3000

# Start the server
CMD ["node", "proxy-server/server.js"]
