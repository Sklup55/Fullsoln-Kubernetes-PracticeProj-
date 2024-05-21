# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the working directory
COPY main.js .
COPY public/index.html public/index.html
COPY public/script.js public/script.js
COPY public/style.css public/style.css
COPY public/jquery.min.js public/jquery.min.js

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the application when the container launches
CMD ["node", "main.js"]
