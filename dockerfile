# Use the official Jupyter Docker base image
FROM jupyter/datascience-notebook

# Set the working directory
WORKDIR /dirct

# Copy the current directory contents into the container 
COPY . /dirct

# Install any needed packages 
RUN pip install numpy pandas matplotlib 

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

# Configure Jupyter Notebook to run with specified options
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]