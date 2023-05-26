# Auto-Transfer
Auto-Transfer is an AutoHotKey Script Builder to transfer all your Dank Memer inventory to another account.

Auto-Transfer won't transfer the following items:
* Fishing Pole
* Shovel
* Laptop
* Keyboard
* Lucky Horseshoe
* Shovel
* Trivia Trophy

Auto-Transfer will only transfer these items (partially) if their quantity is more than a certain value (quantity - value):
* Apple - 20
* Black Hole - 1
* Hunting Rifle - 20
* Keyboard - 5
* Mouse - 5

For example, take Apple; if there are 30 apples this script will only transfer 10 Apples to the other account, and if the amount of Apples are less than or equal to 20, it won't transfer any Apples

## Usage

### Requirements

- [AutoHotkey v1](https://www.autohotkey.com/download/ahk-install.exe)
- [Python](https://www.python.org/)
- Both accounts should be friends in [Dank Memer](https://dankmemer.lol/) 

### Running the program

Clear inventory.txt and copy paste each page of the inventory in inventory.txt, make sure you have compact mode disabled (refer inventory.txt for general syntax)

Replace `{DISCORD ID}` in discord.ahk with your own discord id (account to transfer items to) eg:- `270904126974590976`

Now, Run main.py (this will build the script and item list) then run discord.ahk (using AutoHotkey) and place the cursor on the Discord chat box, and hit Ctrl + Q to start the script.
