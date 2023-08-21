#!/bin/bash

start_process() {
    echo "Starting up database"
    ./run-database.sh &

    echo "Waiting 10 seconds to give database some time to startup properly"
    sleep 10

    echo "Starting common-server"
    ./run-common-server.sh &

    # echo "Starting website"
    # ./run-website.sh &

    echo "Starting level server"
    ./run-level-server.sh &

    echo "Starting client"
    ./run-client.sh &
}

# Function to stop background processes
stop_processes() {
    pkill -f run-database.sh
}

# Set up a trap to call the stop_processes function when the script exits
trap stop_processes EXIT

# Start the background processes
start_process

echo "JDungeon work environment is running"

while true; do
    sleep 1
done

echo "Main script exiting..."
exit
