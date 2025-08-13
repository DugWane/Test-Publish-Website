#!/bin/bash

# Build the project
npm run build

# Switch to live branch
git checkout live

# Copy built files
cp -r dist/* .

# Commit and push
git add .
git commit -m "Deploy latest build"
git push origin live

# Switch back to main
git checkout main