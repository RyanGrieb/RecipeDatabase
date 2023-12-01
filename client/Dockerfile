# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /code

COPY requirements.txt /code
RUN pip install --no-cache-dir -r requirements.txt

COPY . .


# Run your Python script when the container launches
CMD ["python", "main.py"]
