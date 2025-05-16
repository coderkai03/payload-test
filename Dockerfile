# Use official Node image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and lockfile
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your project
COPY . .

# Build Payload admin panel
RUN npm run build

# Expose port Payload runs on
EXPOSE 3000

# Start Payload server
CMD ["npm", "run", "start"]
