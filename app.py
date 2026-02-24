# Import the Flask class from the flask module
import os
from flask import Flask

# Create an instance of the Flask class
app = Flask(__name__)

# Define the root route ("/")
@app.route("/")
def home():
    # Return the required string for the demo
    return "Name: Krish | AppID: 2408361"

# Define a health check route ("/health")
@app.route("/health")
def health():
    # Return "OK" to indicate the app is running properly
    return "OK"

# Run the application
if __name__ == "__main__":
    print("App executed successfully")
    app.run(host="0.0.0.0", port=5000)
