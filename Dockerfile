# Use the latest Ubuntu image
FROM ubuntu:latest

# Set environment variable to prevent prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /workspace

# Default command (can be overridden)
CMD ["bash"]
