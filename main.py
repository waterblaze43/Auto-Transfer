import json, re


with open("item.txt", "r", encoding="utf-8") as f:
    data = f.readlines()

length = len(data)
itemdict = {}


def save():
    global data, refined, length
    data, refined, length = refined, [], len(data)


refined = [x[0:-1] for x in data]

save()

itemdict.update(
    {
        matches.group(1): matches.group(2)
        for x in data
        if (matches := re.search("^\:.+\: (.+) .? ([0-9]+)", x))
    }
)

open("itemList.txt", "w").close()

with open("defaultItemList.txt", "r", encoding="utf-8") as w:
    default = w.readlines()

itemdict.update({item[0:-1]: "0" for item in default if item[0:-1] not in itemdict})

for item in itemdict:
    match item:
        case "Apple":
            if int(itemdict[item]) > 20:
                itemdict[item] = str(int(itemdict[item]) - 20)
            else:
                itemdict[item] = "0"
        case "Hunting Rifle":
            if int(itemdict[item]) > 20:
                itemdict[item] = str(int(itemdict[item]) - 20)
            else:
                itemdict[item] = "0"
        case "Black Hole":
            if int(itemdict[item]) > 1:
                itemdict[item] = str(int(itemdict[item]) - 1)
            else:
                itemdict[item] = "0"
        case "Fishing Pole":
            itemdict[item] = "0"
        case "Shovel":
            itemdict[item] = "0"
        case "Laptop":
            itemdict[item] = "0"
        case "Keyboard":
            if int(itemdict[item]) > 5:
                itemdict[item] = str(int(itemdict[item]) - 5)
            else:
                itemdict[item] = "0"
        case "Mouse":
            if int(itemdict[item]) > 5:
                itemdict[item] = str(int(itemdict[item]) - 5)
            else:
                itemdict[item] = "0"
        case "Lucky Horseshoe":
            itemdict[item] = "0"
        case "Trivia Trophy":
            itemdict[item] = "0"

    with open("itemList.txt", "a+", encoding="utf-8") as f:
        f.write(item + "," + itemdict[item] + "\n")

with open("itemList.txt", "r") as f:
    finalData = sorted(f.readlines())


itemsList = [x[0:-1].partition(",")[0] for x in finalData]
valueList = [x[0:-1].partition(",")[2] for x in finalData]


print(len(itemsList), len(valueList), sep="\n")
# print(json.dumps(itemsList))
values = json.dumps(valueList)
# print(values)

with open("discord.ahk", "r", encoding="utf-8") as n:
    data = n.readlines()


data[2] = f"""    values := {values}\n"""


with open("discord.ahk", "w", encoding="utf-8") as f:
    f.writelines(data)
