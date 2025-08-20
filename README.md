# ci-cd-task

## 🚀 Running with Docker

### 1. Pull the latest image from Docker Hub
```bash
docker pull mmtrabya25/ci-cd-task:latest
```
### 2. Run the container
```bash
docker run -p 3000:3000 \
  -e MONGO_URI="your-mongo-uri" \
  -e MONGO_USERNAME="your-username" \
  -e MONGO_PASSWORD="your-password" \
  mmtrabya25/ci-cd-task:latest
```
### 3. Build and run locally (optional)
```bash
# Build the image
docker build -t mmtrabya25/ci-cd-task:latest .
# Run the container
docker run -p 3000:3000 \
  -e MONGO_URI="your-mongo-uri" \
  -e MONGO_USERNAME="your-username" \
  -e MONGO_PASSWORD="your-password" \
  mmtrabya25/ci-cd-task:latest
```