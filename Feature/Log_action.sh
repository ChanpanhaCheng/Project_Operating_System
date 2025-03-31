#!/bin/bash

log_file="script.log"

# Function to log actions
log_action() {
    echo "$(date): $1" >> "$log_file"
}
