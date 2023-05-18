# Auto-Transfer
Auto-Transfer is an AutoHotKey Script Builder to transfer all your Dank Memer inventory to another account.

## Usage

### Requirements

- [AutoHotkey v1](https://www.autohotkey.com/download/ahk-install.exe)
- [Python](https://www.python.org/)
- Both accounts should be friends in [Dank Memer](https://dankmemer.lol/) 

### Running the program

Clear itemlist.txt and copy paste each page of the inventory in item.txt, make sure you have compact mode disabled (refer item.txt for general syntax)

Replace `{DISCORD ID}` in discord.ahk with your own discord id (account to transfer items to) eg:- 270904126974590976

Now, Run main.py (this will build the script and item list) then run discord.ahk (using AutoHotkey) and place the cursor on the Discord chat box, and hit Ctrl + Q to start the script.
