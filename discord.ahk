^q::
    arr := ["Adventure Ticket", "Adventure Voucher", "Aetheryx' Flower", "Alcohol", "Ammo", "Ant", "Apple", "Armpit Hair", "Badosz's Card", "Bank Note", "Barrel of Sludge", "Bean", "Black Hole", "Blue Plastic Bits", "Blue's Plane", "Boar", "Bottle of Whiskey", "Box of Sand", "Bunny's Apron", "Camera", "Candy", "Cell Phone", "Chill Pill", "Coin Bomb", "Common Fish", "Cookie", "Corn Seeds", "Corndog", "Daily Box", "Dank Box", "Deer", "Designer Hoodie", "Dragon", "Duck", "Duct Tape", "Engagement Ring", "Exotic Fish", "Fake ID", "Fishing Bait", "Fishing Pole", "Fossil", "Fresh Bread", "Garbage", "Golden Plastic Bits", "Gravestone", "Green Screen", "Hoe", "Hunting Rifle", "Jelly Fish", "Keyboard", "Kraken", "Ladybug", "Laptop", "Legendary Fish", "Life Saver", "Like Button", "Lucky Horseshoe", "Microphone", "Mole Man", "Mouse", "Multi Colored Plastic Bits", "Normie Box", "Old Box", "Orange Plastic Bits", "Padlock", "Pepe Coin", "Pepe Statue", "Pink Plastic Bits", "Pizza Slice", "Police Badge", "Potato ☭", "Purple Plastic Bits", "Rabbit", "Rare Fish", "Rare Pepe", "Robbers Wishlist", "Royal Scepter", "Sanic Hot Dog", "Seaweed", "Shovel", "Shredded Cheese", "Skunk", "Spider", "Squishy Paw", "Stickbug", "Trivia Trophy", "Water Bucket", "Watering Can", "Worm", "Zig's Capybara", "ZomB's ZomBee"]
    values := ["256", "3", "5", "72", "3", "333", "213", "5", "2", "425", "8", "26", "1", "271", "3", "122", "2", "1,238", "5", "11", "104", "81", "71", "5", "577", "80", "9", "21", "2", "3", "252", "7", "194", "260", "2", "4", "156", "15", "2", "0", "46", "71", "746", "33", "860", "1", "16", "42", "176", "12", "58", "119", "0", "76", "1", "3", "0", "2", "43", "0", "28", "12", "1", "16", "211", "3", "184", "1", "40", "10", "7", "15", "872", "102", "61", "3", "2", "53", "255", "0", "79", "994", "47", "1", "67", "0", "6", "20", "1,410", "107", "1"]
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
