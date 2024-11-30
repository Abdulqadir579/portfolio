# Use a lightweight Node.js image as the base
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the production bundle
RUN npm run build

# Expose the port for the production server
EXPOSE 3000

# Start the production server
CMD ["npm", "start"]