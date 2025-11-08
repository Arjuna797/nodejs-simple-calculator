# Use a small Node.js image
FROM node:20-alpine

# Set work directory
WORKDIR /app

# Copy all project files
COPY . .

# Expose port 80
EXPOSE 80

# Run server
CMD ["node", "server.js"]
