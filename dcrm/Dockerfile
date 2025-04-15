# Use an official Python runtime as a base image
FROM python:3.12-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy only the requirements.txt first to leverage Docker cache for dependencies
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the project into /app (dcrm folder and manage.py)
COPY . /app/

# Set the DJANGO_SETTINGS_MODULE environment variable for Django
ENV DJANGO_SETTINGS_MODULE=dcrm.settings

# Collect static files (important for production)
RUN python manage.py collectstatic --noinput

# Expose the port the app will run on
EXPOSE 8000

# Run the application using Waitress as the WSGI server
CMD ["python", "runserver.py"]