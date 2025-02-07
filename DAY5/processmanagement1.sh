#!/bin/bash
# Process management script

start_process() {
    # Start a process
    /path/to/your_process &
    echo "Process started."
}

stop_process() {
    # Stop a process
    PID=$(pgrep -x "your_process_name")
    if [ -n "$PID" ]; then
        kill $PID
        echo "Process stopped."
    else
        echo "Process not running."
    fi
}

status_process() {
    # Check if a process is running
    if pgrep -x "your_process_name" > /dev/null
    then
        echo "Process is running."
    else
        echo "Process is not running."
    fi
}

case "$1" in
    start)
        start_process
        ;;
    stop)
        stop_process
        ;;
    status)
        status_process
        ;;
    *)
        echo "Usage: $0 {start|stop|status}"
        exit 1
        ;;
esac
