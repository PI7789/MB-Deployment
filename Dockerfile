# Step 1: Use an official Python runtime as a base image
FROM python:3.12-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app/

# Step 4: Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV DJANGO_SETTINGS_MODULE=dcrm.settings

# Step 5: Collect static files (important for production)
RUN python manage.py collectstatic --noinput

# Step 6: Expose the port that the app will run on
EXPOSE 8000

# Step 7: Run the application (using Waitress here, but you could use Gunicorn or another WSGI server)
CMD ["waitress-serve", "--host=0.0.0.0", "--port=8000", "dcrm.wsgi:application"]

