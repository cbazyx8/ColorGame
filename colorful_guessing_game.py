
import random
import time

def welcome_screen():
    print(r"  _   _      _ _        __        __         _     _ ")
    print(r" | | | | ___| | | ___   \ \      / /__  _ __| | __| |")
    print(r" | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |")
    print(r" |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |")
    print(r" |_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|")
    print()
    print("       Welcome to the Colorful Guessing Game!")
    print("           Developed by Wahab Khan")
    print()

def play_game():
    print("Let's play a colorful guessing game!")
    print("I'll give you a random color, and you have to guess the hex code!")
    
    colors = {
        "red": "#FF0000",
        "green": "#00FF00",
        "blue": "#0000FF",
        "yellow": "#FFFF00",
        "purple": "#FF00FF",
        "cyan": "#00FFFF"
    }
    
    random_color = random.choice(list(colors.keys()))
    attempts = 0
    
    while True:
        guess = input(f"Guess the hex code for the color '{random_color}': ")
        attempts += 1
        
        if guess.lower() == colors[random_color].lower():
            print(f"Congratulations! You guessed the hex code in {attempts} attempts.")
            break
        else:
            print("Oops, that's not the correct hex code. Try again!")

def main():
    welcome_screen()
    play_game()

if __name__ == "__main__":
    main()
```
