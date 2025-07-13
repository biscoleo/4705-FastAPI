
# Define variables for the image name and tag
IMAGE_NAME := sentiment-api

build:
	@echo "Building Docker image: $(IMAGE_NAME)"
	docker build -t $(IMAGE_NAME) .

run:
	@echo "Running Docker container..."
	docker run --rm -p 8000:8000 $(IMAGE_NAME)

clean:
	@echo "Removing Docker image: $(IMAGE_NAME)"
	docker rmi $(IMAGE_NAME) || true

help:
	@echo "Available commands:"
	@echo "  make build    - Build the Docker image"
	@echo "  make run      - Run the Docker container (port 8000)"
	@echo "  make clean    - Remove the Docker image"
	@echo "  make rebuild  - Clean and rebuild the Docker image"
