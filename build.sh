#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting build process..."

# Create a virtual environment (recommended to avoid conflicts)
echo "Creating virtual environment..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies from requirements.txt
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Run the Flask application
echo "Running app.py..."
# Set CI environment variable so the app doesn't block Jenkins
export CI=true
python3 app.py

echo "Build completed"
