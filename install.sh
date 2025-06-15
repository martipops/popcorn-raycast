#!/bin/bash

set -e

function wait_for_npm() {
  echo "Waiting for npm to be available..."
  for i in {1..30}; do
    if command -v npm >/dev/null 2>&1; then
      echo "npm is now available."
      return 0
    fi
    sleep 2
  done
  echo "Timed out waiting for npm to be installed."
  exit 1
}

# Step 1: Check for npm
if ! command -v npm >/dev/null 2>&1; then
  echo "npm is not installed."

  # Step 2: Check for Homebrew
  if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is installed."
    read -p "Do you want to install Node.js via Homebrew? (y/n) " use_brew
    if [[ "$use_brew" == "y" ]]; then
      echo "Installing Node.js via Homebrew..."
      brew install node
      wait_for_npm
    else
      read -p "Do you want to download the official Node.js installer (.pkg)? (y/n) " use_pkg
      if [[ "$use_pkg" == "y" ]]; then
        echo "Opening Node.js website..."
        open "https://nodejs.org/"
        read -p "Press Enter when the installation is complete..."

        # Reload shell environment
        echo "Reloading shell environment..."
        export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
        hash -r

        wait_for_npm
      else
        echo "Cannot continue without npm. Exiting."
        exit 1
      fi
    fi
  else
    echo "Homebrew is not installed and npm is missing."
    read -p "Do you want to download the official Node.js installer (.pkg)? (y/n) " use_pkg
    if [[ "$use_pkg" == "y" ]]; then
      echo "Opening Node.js installer..."
      open "https://nodejs.org/dist/latest/node.pkg"
      read -p "Press Enter when the installation is complete..."

      export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
      hash -r

      wait_for_npm
    else
      echo "Cannot continue without npm. Exiting."
      exit 1
    fi
  fi
else
  echo "npm is already installed."
fi

# Step 3: Continue with project setup
echo "Installing dependencies..."
npm install

echo "Building project..."
npm run build

echo "Starting dev server (will run for ~3 seconds)..."
npm run dev &
DEV_PID=$!
DEV_PGID=$(ps -o pgid= $DEV_PID | tr -d ' ')

sleep 3
echo "Stopping dev server..."
kill -TERM -$DEV_PGID 2>/dev/null || echo "Dev server already exited."
