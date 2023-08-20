# How to create a new item for JDungeon

This howto will explain the steps needed to create a new item for jdungeon. Note that this is for an item and not equipment. A typical item is something like a healing potion, food, drinks, ...
If you only want to contribute an asset, that is fine, just check the mandatory steps. If want to really add the item to the game itself, follow all the steps (also the optional ones).

## Step 1: Create your asset
Draw your item. Make sure to follow the same style as the rest of the assets. The style can be described as cartoonisch with an outlined border.

Here are some examples:
- [HealthPotion](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/assets/items/HealthPotion/HealthPotion.png)
- [Apple](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/assets/items/Apple/Apple.png)
- [Meat](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/assets/items/Meat/Meat.png)

Best practice is to use a square dimension for the image. The previous items have a dimension of 2048 x2048.

## Step 2: add the item to the server (optional)
1. Create a new gdscript file in the items directory. Makes sure that the file has the name as the item (all lower cases).

   [Apple example](https://github.com/jonathaneeckhout/jdungeon-level-server/blob/main/scripts/items/consumables/apple.gd)

2. Specify the attributes for this item. Should it heal, should it give mana, ...

   [Apple example](https://github.com/jonathaneeckhout/jdungeon-level-server/blob/main/scripts/items/consumables/apple.gd#L6)
3.  Map the item name to the script via the [Global mapper function](https://github.com/jonathaneeckhout/jdungeon-level-server/blob/main/scripts/global.gd#L56) so that the rest of the code can use the item.

## Step 3: add the item to the client (optional)
1. Create a new gdscript file in the items directory. Makes sure that the file has the name as the item (all lower cases).

   [Apple example](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/scripts/items/consumables/apple.gd)
   
2. Specify the attributes for this item. Should it heal, should it give mana, ...

   [All possible variables can be found here](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/scripts/item.gd)

3.  Map the item name to the script via the [Global mapper function](https://github.com/jonathaneeckhout/jdungeon-client/blob/main/scripts/global.gd#L40) so that the rest of the code can use the item.


## Step 4: contribute your changes
Once you completed all the steps above it is time to contribute it to the project. Have a look at this [How to contribute to JDungeon howto](https://github.com/jonathaneeckhout/jdungeon-overview/blob/main/howtos/HowToContribute.md) howto to learn how to do it.
