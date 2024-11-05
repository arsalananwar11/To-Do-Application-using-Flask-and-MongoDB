# Use the official Python image from the Docker Hub
FROM python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD flask run -h 0.0.0.0 -p 5000
