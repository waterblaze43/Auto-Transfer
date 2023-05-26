^q::
    arr := ["Adventure Ticket", "Adventure Voucher", "Aetheryx' Flower", "Alcohol", "Ammo", "Ant", "Anti-Rob Pack", "Apple", "Armpit Hair", "Badosz's Card", "Ban Hammer", "Bank Note", "Barrel of Sludge", "Bean Seeds", "Bean", "Black Hole", "Blue Plastic Bits", "Blue's Plane", "Boar", "Bottle of Whiskey", "Box of Sand", "Broccoli Seeds", "Bunny's Apron", "Camera", "Candy", "Carrot Seeds", "Cell Phone", "Chill Pill", "Coin Bomb", "Common Fish", "Cookie", "Corn Seeds", "Corncob", "Corndog", "Cowboy Boots", "Daily Box", "Dank Box", "Deer", "Designer Hoodie", "Dragon", "Duck", "Duct Tape", "Ectoplasm", "Engagement Ring", "Exotic Fish", "Fake ID", "Fishing Bait", "Fishing Pole", "Fossil", "Fresh Bread", "Garbage", "Golden Plastic Bits", "Gravestone", "Green Screen", "Grind Pack", "Hoe", "Hunting Rifle", "Jelly Fish", "Keyboard", "Kraken", "Ladybug", "Landmine", "Laptop", "Legendary Fish", "Life Saver", "Like Button", "Lucky Horseshoe", "Meme Box", "Microphone", "Mole Man", "Mouse", "Multi Colored Plastic Bits", "Normie Box", "Old Box", "Orange Plastic Bits", "Padlock", "Pepe Box", "Pepe Coin", "Pepe Crown", "Pepe Medal", "Pepe Statue", "Pepe Trophy", "Pink Plastic Bits", "Pizza Slice", "Plastic Box", "Police Badge", "Potato", "Purple Plastic Bits", "Rabbit", "Rare Fish", "Rare Pepe", "Ring Light", "Robbers Wishlist", "Royal Scepter", "Sanic Hot Dog", "Seaweed", "Shop Coupon", "Shovel", "Shredded Cheese", "Skunk", "Spider", "Squishy Paw", "Stickbug", "Stolen Amulet", "Streak Freeze", "The Letter", "The Megaphone", "Trivia Trophy", "Used Diaper", "Water Bucket", "Watering Can", "Watermelon Seeds", "Work Box", "Worm", "Zig's Capybara", "ZomB's ZomBee"]
    values := ["256", "3", "5", "72", "3", "333", "0", "193", "5", "2", "0", "425", "8", "0", "26", "2", "271", "3", "122", "2", "1", "0", "5", "10", "104", "0", "81", "71", "5", "577", "80", "9", "0", "21", "0", "2", "3", "252", "7", "194", "260", "2", "0", "4", "156", "15", "2", "0", "46", "71", "746", "33", "860", "1", "0", "16", "52", "176", "12", "58", "119", "0", "1", "76", "1", "3", "0", "0", "2", "43", "0", "28", "12", "1", "16", "211", "0", "3", "0", "0", "184", "0", "1", "40", "0", "10", "7", "15", "872", "102", "61", "0", "3", "2", "53", "255", "0", "0", "79", "994", "47", "1", "67", "0", "0", "0", "0", "0", "0", "6", "20", "0", "0", "1", "107", "1"]
    merged := Object()
    for index, item in arr 
    {
        merged[item]:= values[index]
    }
    for key,value in merged
    {
        if (value != 0) 
        {
            Send, /friends share items {DISCORD ID} `t %value% `t %key%
            Sleep, 1500
            Send, {Enter}
            Send, {Enter}
            Sleep, 1500 
        }
    }

Return
