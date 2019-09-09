import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("############################_Adding Recipe_############################");

val recipeMapErraseShaped = {
    <magneticraft:crafting:5> : [[<ore:plateBronze>,<minecraft:string>,<ore:plateBronze>],[<minecraft:string>,<ore:plateBronze>,<minecraft:string>],[<ore:plateBronze>,<minecraft:string>,<ore:plateBronze>]],
	<magneticraft:water_generator> : [[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],[<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).noReturn(),<magneticraft:iron_pipe> ,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).noReturn()],[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]],
	<magneticraft:iron_pipe> * 8 : [[<minecraft:glass>,<ore:plateAluminum>,<minecraft:glass>],[<ore:plateAluminum>,<ore:blockGlass>,<ore:plateAluminum>],[<minecraft:glass>,<ore:plateAluminum>,<minecraft:glass>]],
	<projectred-transportation:pipe:3> : [[<minecraft:redstone>,<projectred-core:resource_item:104>,<minecraft:redstone>],[<minecraft:redstone>,<projectred-transportation:pipe:1>,<minecraft:redstone>],[<minecraft:redstone>,<projectred-core:resource_item:104>,<minecraft:redstone>]],
	<mysticalagriculture:crafting:32> : [[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>],[<mysticalagriculture:crafting:5>,<ore:ingotBronze>,<mysticalagriculture:crafting:5>],[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>]],
	<magneticraft:wrench> : [[null,<ore:plateAluminum>,<ore:ingotBronze>],[<minecraft:redstone>,<ore:ingotBronze>,null],[<ore:ingotBronze>,<minecraft:redstone>,null]],
	<projectred-transportation:pipe:1> * 8 : [[<projectred-core:resource_item:514>,<projectred-core:resource_item:320>,<projectred-core:resource_item:513>],[<projectred-core:resource_item:104>,<ore:paneGlass>,<projectred-core:resource_item:104>],[<projectred-core:resource_item:514>,<projectred-core:resource_item:320>,<projectred-core:resource_item:513>]],
	<projectred-transportation:routing_chip> : [[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>]],
	<projectred-transportation:routing_chip:1> : [[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<projectred-core:resource_item:509>],[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>]],
	<projectred-transportation:routing_chip:2> : [[<projectred-core:resource_item:513>,<minecraft:redstone>,<projectred-core:resource_item:513>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:513>,<minecraft:redstone>,<projectred-core:resource_item:513>]],
	<projectred-transportation:routing_chip:3> : [[<projectred-core:resource_item:510>,<minecraft:redstone>,<projectred-core:resource_item:507>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:510>,<minecraft:redstone>,<projectred-core:resource_item:507>]],
	<projectred-transportation:routing_chip:4> : [[<projectred-core:resource_item:509>,<minecraft:redstone>,<projectred-core:resource_item:509>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:509>,<minecraft:redstone>,<projectred-core:resource_item:509>]],
	<projectred-transportation:routing_chip:6> : [[<projectred-core:resource_item:511>,<minecraft:redstone>,<projectred-core:resource_item:511>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:511>,<minecraft:redstone>,<projectred-core:resource_item:511>]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapErraseShaped {
	recipes.remove(key);
    recipes.addShaped(/*"CT_" + key.name,*/key, recipe);
}

val recipeMapAddShaped = {
    <magneticraft:iron_pipe> * 16 : [[<minecraft:glass>,<ore:plateIron>,<minecraft:glass>],[<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>],[<minecraft:glass>,<ore:plateIron>,<minecraft:glass>]],
	<projectred-core:resource_item:252> : [[<projectred-core:resource_item:105>,<projectred-core:resource_item:105>,<projectred-core:resource_item:105>],[<projectred-core:resource_item:105>,<ore:ingotAluminum>,<projectred-core:resource_item:105>],[<projectred-core:resource_item:105>,<projectred-core:resource_item:105>,<projectred-core:resource_item:105>]],
	//: [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapAddShaped {
    recipes.addShaped(/*"CT_" + key.displayName,*/key, recipe);
}

val recipeMapAddShapeless = {
	<projectred-core:resource_item:301> * 8 : [<minecraft:flint>,<minecraft:flint>,<projectred-core:resource_item:300>],
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapAddShapeless {
    recipes.addShapeless(/*"CT_" + key.displayName,*/key, recipe);
}

val recipeMapErraseShapeless = {
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapErraseShapeless {
    recipes.remove(key);
	recipes.addShapeless(/*"CT_" + key.displayName,*/key, recipe);
}

print("############################_End of Recipe_############################");