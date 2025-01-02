# Use Python 3.10 slim as the base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
