# Base Python image
FROM python:3.11-slim

# Install pygopherd
RUN apt-get update && apt-get install -y --no-install-recommends \
    supervisor \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir pygopherd

# Set up the working directory
WORKDIR /app

# Copy configuration and data files
COPY ./pygopherd.conf /etc/pygopherd/pygopherd.conf
COPY ./gopher-data /app/gopher-data

# Expose the Gopher port
EXPOSE 70

# Command to start pygopherd
CMD ["pygopherd"]