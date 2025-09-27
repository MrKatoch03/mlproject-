# Use a modern, supported Python base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Install system dependencies and awscli
RUN apt-get update && \
    apt-get install -y --no-install-recommends awscli && \
    rm -rf /var/lib/apt/lists/*

# Copy your project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Command to run your app (customize as needed)
CMD ["python", "main.py"]
