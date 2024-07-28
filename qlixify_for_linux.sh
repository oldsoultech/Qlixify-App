#!/bin/bash

# Print the welcome message
echo "Welcome to Qlixify for Linux"
echo -n "Now loading"

# Initialize a counter for the timer
SECONDS=0

# Loop for 5 seconds
while [ $SECONDS -lt 5 ]; do
    # Add dots one by one, then remove them
    for i in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    # Move the cursor back and overwrite the dots with spaces
    for i in {1..3}; do
        echo -ne "\b \b"
    done
done

# Open the URL in the default web browser
xdg-open "https://qlixify.qlix.site" &

# End the script
exit 0

