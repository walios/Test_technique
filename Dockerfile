# Use an official Python runtime as a parent image
FROM jupyter/base-notebook:latest

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir numpy pandas matplotlib pyarrow

# Convert and run the notebook when the container launches
CMD ["jupyter", "nbconvert", "--execute", "--inplace", "testtechnique.ipynb"]