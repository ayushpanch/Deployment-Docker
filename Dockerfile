# app/Dockerfile

# FROM python:3.9-slim

# COPY . /app

# WORKDIR /app

# RUN pip install -r requirements.txt


# ENTRYPOINT ["streamlit", "run", "solution_v4.py"]
FROM codercom/code-server:latest

COPY . /app

WORKDIR /app


# Install additional tools, including python3-venv
RUN sudo apt-get update && \
    sudo apt-get install -y python3-venv && \
    sudo rm -rf /var/lib/apt/lists/*


# RUN pip install -r requirements.txt
# Expose port 8080 for code-server

# Start code-server when the container starts
ENTRYPOINT ["dumb-init", "code-server"]

