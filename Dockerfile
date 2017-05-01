# Use an official node runtime as a base image
FROM node:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages
RUN npm install

# Run speedtest.js when the container launches
CMD ["node","speedtest.js"]