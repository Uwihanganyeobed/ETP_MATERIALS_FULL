# Use the latest Node.js image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port Vite uses (default is 5173)
EXPOSE 5173

# Start the Vite server
CMD ["npm", "run", "dev"]
