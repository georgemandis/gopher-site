# Gopher Site

A Gopher server implementation using PyGopherd, containerized with Docker and deployed on Fly.io.

This is currently running at:

- gopher://build.less.software

## Overview

This project hosts a Gopher site, a lightweight alternative to the World Wide Web that was popular in the early days of the internet. The site is built using PyGopherd, a Python-based Gopher server implementation, and is containerized for easy deployment.

It also conatins a `fly.toml` file for easy deployment to Fly.io. I was surprised how tricky it was to find an easy/cheap/free way to do this.

## Features

- Runs on PyGopherd, a robust Gopher server implementation
- Containerized with Docker for easy deployment
- Deployed on Fly.io for reliable hosting
- Uses Python 3.11 as the base runtime
- Configured with supervisor for process management

## Technical Details

- **Server**: PyGopherd
- **Runtime**: Python 3.11
- **Container**: Docker
- **Hosting**: Fly.io
- **Port**: 70 (Standard Gopher port)

## Project Structure

- `pygopherd.conf` - PyGopherd server configuration
- `gopher-data/` - Directory containing Gopher content
- `Dockerfile` - Container configuration
- `fly.toml` - Fly.io deployment configuration

## Deployment

The site is configured to run on Fly.io with the following specifications:
- Memory: 512MB
- CPU: 1 shared CPU
- Region: EWR (Newark)
- HTTPS: Enabled
- Auto-scaling: Enabled

## Getting Started

1. Clone the repository
2. Add your Gopher content to the `gopher-data/` directory
3. Configure the server in `pygopherd.conf`
4. Build and deploy using Docker and Fly.io