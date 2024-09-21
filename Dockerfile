# Use node version 22 image
FROM node:22

# Set working directory
WORKDIR /usr/src/myapp/

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies including TypeScript
RUN npm install

# Copy the rest of the application code
COPY . .

# Run TypeScript compilation (assuming it's part of your build script)
RUN npm run build

