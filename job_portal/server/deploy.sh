#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
    export $(cat .env | xargs)
fi

# Print the loaded variables (for debugging)
echo "Deploying to $HOST..."
echo "Using database: $DATABASE"

# Start your application
# Adjust the command based on your setup (e.g., npm start, node server.js)
npm start