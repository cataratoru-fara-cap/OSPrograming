#!/bin/bash

#write a bash script that allows the user to select one of four operations 
# Stop the script from running at a prescheduled time.
#When any of the operations and the user will be redirected to choose one of the options again 
#or  write “exit” and hit enter to stop the loop
operation1() {
    echo "Operation 1 executed"
}

operation2() {
    echo "Operation 2 executed"
}

operation3() {
    echo "Operation 3 executed"
}

operation4() {
    echo "Operation 4 executed"
}
    while true; do
    read -p "Select an operation (1-4) or type 'exit' to quit: " operation
        case $operation in
            1) operation1 ;;
            2) operation2 ;;
            3) operation3 ;;
            4) operation4 ;;
            "exit") break ;;
            *) echo "Invalid option" ;;
        esac

    current_hour=$(date +%H)
    stop_hour=14
    if (( current_hour >= stop_hour )); then
        echo "Stopping script due to scheduled time"
        break
    fi
done

