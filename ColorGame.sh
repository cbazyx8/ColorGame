#!/bin/bash

welcome_screen() {
    echo -e "  _   _      _ _        __        __         _     _ "
    echo -e " | | | | ___| | | ___   \ \      / /__  _ __| | __| |"
    echo -e " | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _\` |"
    echo -e " |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |"
    echo -e " |_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|"
    echo
    echo "       Welcome to the Colorful Guessing Game!"
    echo "           Developed by Wahab Khan"
    echo
}

play_game() {
    echo "Let's play a colorful guessing game!"
    echo "I'll give you a random color, and you have to guess the hex code!"
    
    declare -A colors=(
        [red]="#FF0000"
        [green]="#00FF00"
        [blue]="#0000FF"
        [yellow]="#FFFF00"
        [purple]="#FF00FF"
        [cyan]="#00FFFF"
    )
    
    random_color=$(shuf -n1 -e "${!colors[@]}")
    attempts=0
    
    while true; do
        read -p "Guess the hex code for the color '$random_color': " guess
        ((attempts++))
        
        if [[ ${colors[$random_color]} == "$guess" ]]; then
            echo "Congratulations! You guessed the hex code in $attempts attempts."
            break
        else
            echo "Oops, that's not the correct hex code. Try again!"
        fi
    done
}

main() {
    welcome_screen
    play_game
}

main
```
