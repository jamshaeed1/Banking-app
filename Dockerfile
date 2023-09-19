FROM 190168171128.dkr.ecr.eu-central-1.amazonaws.com/node:latest
 

 

# Set the working directory in the container
WORKDIR /usr/src/app

 

 

# Copy package.json and package-lock.json to the container
COPY package*.json ./

 

 

# Install dependencies
RUN npm install

 

 

# Copy the application code to the container
COPY . .

 

 

# Expose a port (e.g., 3000) for the application to listen on
EXPOSE 3000

 

 

# Define the command to run the application
CMD ["node", "app.js"]
