# Use the official Python image
FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 8000 for Django
EXPOSE 8000

# Define the entrypoint
ENTRYPOINT ["python3"]

# Corrected CMD syntax
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
