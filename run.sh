#!/bin/bash

# CV Build and Run Script
# This script builds the CV and opens the resulting PDF

echo "Building CV..."
make build

if [ $? -eq 0 ]; then
    echo "Build successful! Opening CV..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        open cv.pdf
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        xdg-open cv.pdf
    else
        echo "PDF generated successfully: cv.pdf"
        echo "Please open cv.pdf manually"
    fi
else
    echo "Build failed!"
    exit 1
fi