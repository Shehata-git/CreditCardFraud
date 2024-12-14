#!/bin/bash

# Get the directory of the script (in case it's run from elsewhere)
PROJECT_DIR=$(dirname "$(realpath "$0")")
VENV_PATH="$PROJECT_DIR/.venv/bin/activate"

if [ -f "$VENV_PATH" ]; then
    echo "Activating virtual environment at $VENV_PATH"
    # shellcheck disable=SC1090
    source "$VENV_PATH"
else
    echo "Error: Virtual environment not found at $VENV_PATH"
    exit 1
fi
