# Use Node.js 18 on Alpine for lightweight image
FROM node:18-alpine3.17

# Create app directory
WORKDIR /usr/app

# Install dependencies (leverage Docker layer caching)
COPY package*.json ./
RUN npm install --only=production

# Copy application code
COPY . .

# Environment variables (can override at runtime)
ENV MONGO_URI=mongodb+srv://supercluster.d83jj.mongodb.net/superData
ENV MONGO_USERNAME=superuser
ENV MONGO_PASSWORD=SuperPassword

# App listens on port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
