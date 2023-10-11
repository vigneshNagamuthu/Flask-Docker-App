# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port your application will run on (e.g., 80)
EXPOSE 80

# Define environment variables if needed
ENV VARIABLE_NAME=value

# Run your application when the container launches (replace with your actual command)
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
