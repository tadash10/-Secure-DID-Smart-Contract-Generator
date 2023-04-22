suso nano

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "secure_did_contract_generator.py"]
#This Dockerfile pulls the python:3.8-slim-buster image and sets the working directory to /app. It then copies the requirements.txt file into the container and installs the required Python packages. Finally, it copies the entire application directory into the container and sets the command to run the secure_did_contract_generator.py script.



# the other options is : 
# Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run the command to start the application
CMD ["python", "did_generator.py"]
