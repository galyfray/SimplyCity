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
	<minecraft:chest> : [[<ore:logWook>,<ore:plankWood>,<ore:logWook>],[<ore:plankWood>,<minecraft:flint>,<ore:plankWood>],[<ore:logWook>,<ore:plankWood>,<ore:logWook>]],
	<agricraft:trowel> : [[null,null,<minecraft:stick>],[<ore:ingotAluminum>,<ore:ingotAluminum>,null],[null,null,null]],
	<agricraft:clipper> : [[null,<ore:ingotAluminum>,null],[<minecraft:stick>,<thermalfoundation:tool.shears_aluminum>,null],[null,<minecraft:stick>,null]],
	<magneticraft:multiblock_parts:2> : [[null,<magneticraft:crafting:5>,null],[<magneticraft:crafting:5>,<ore:stone>,<magneticraft:crafting:5>],[null,<magneticraft:crafting:5>,null]],
	<magneticraft:multiblock_column> * 2 : [[<ore:plateLead>,<ore:plateAluminum>,<ore:plateLead>],[<ore:plateLead>,<ore:stone>,<ore:plateLead>],[<ore:plateLead>,<ore:plateAluminum>,<ore:plateLead>]],
	<magneticraft:multiblock_parts> * 3 : [[<ore:plateAluminum>,<ore:plateAluminum>,<ore:plateAluminum>],[<ore:ingotBronze>,<magneticraft:crafting:2>,<ore:ingotBronze>],[<ore:plateLead>,<ore:plateLead>,<ore:plateLead>]],
	<magneticraft:crafting:2> *2 : [[<ore:ingotLead>,<ore:ingotLead>,null],[<minecraft:redstone>,<magneticraft:crafting:3>,<ore:ingotAluminum>],[<ore:ingotLead>,<ore:ingotLead>,null]],
	<magneticraft:crafting:3> *8 : [[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>],[<ore:plateCopper>,<ore:plateAluminum>,<ore:plateCopper>],[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>]],
	<magneticraft:multiblock_parts:5> *8 : [[<thermalfoundation:material:324>,<thermalfoundation:material:324>,<thermalfoundation:material:324>],[<thermalfoundation:material:324>,<minecraft:concrete_powder:*>,<thermalfoundation:material:324>],[<thermalfoundation:material:324>,<thermalfoundation:material:324>,<thermalfoundation:material:324>]],  
	<magneticraft:steam_boiler> : [[<thermalfoundation:material:324>,<ore:ingotAluminum>,<thermalfoundation:material:324>],[<ore:plateBronze>,<minecraft:concrete_powder:*>,<ore:plateBronze>],[<thermalfoundation:material:324>,<ore:ingotAluminum>,<thermalfoundation:material:324>]],
	<magneticraft:heat_pipe> : [[null,<ore:ingotAluminum>,null],[<ore:ingotAluminum>,<ore:plateCopper>,<ore:ingotAluminum>],[null,<ore:ingotAluminum>,null]],
	<magneticraft:combustion_chamber> : [[<ore:ingotBrick>,<ore:ingotAluminum>,<ore:ingotBrick>],[<ore:ingotBrick>,null,<ore:plateAluminum>],[<ore:ingotBrick>,<ore:ingotBrick>,<ore:ingotBrick>]],
	<magneticraft:multiblock_parts:4> : [[<ore:plateLead>,<magneticraft:crafting:3>,<ore:plateLead>],[<ore:plateAluminum>,<magneticraft:crafting:3>,<ore:plateAluminum>],[<ore:plateLead>,<magneticraft:crafting:3>,<ore:plateLead>]],
	<magneticraft:multiblock_parts:3> : [[<ore:gemQuartzBlack>,<ore:lightPlateGold>,<ore:gemQuartzBlack>],[<ore:lightPlateGold>,<ore:stone>,<ore:lightPlateGold>],[<ore:gemQuartzBlack>,<ore:lightPlateGold>,<ore:gemQuartzBlack>]],
	<magneticraft:copper_coil>.withTag({}) : [[null,<ore:plateCopper>,null],[<ore:plateCopper>,<ore:plateAluminum>,<ore:plateCopper>],[null,<ore:plateCopper>,null]],
	// : [[,,],[,,],[,,]],
	
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapErraseShaped {
	recipes.remove(key);
    recipes.addShaped(key, recipe);
}

val recipeMapAddShaped = {
    <magneticraft:iron_pipe> * 16 : [[<minecraft:glass>,<ore:plateIron>,<minecraft:glass>],[<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>],[<minecraft:glass>,<ore:plateIron>,<minecraft:glass>]],
	<projectred-core:resource_item:252> : [[<projectred-core:resource_item:105>,<projectred-core:resource_item:105>,<projectred-core:resource_item:105>],[<projectred-core:resource_item:105>,<ore:ingotAluminum>,<projectred-core:resource_item:105>],[<projectred-core:resource_item:105>,<projectred-core:resource_item:105>,<projectred-core:resource_item:105>]],
	<minecraft:piston> : [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],[<ore:cobblestone>,<ore:ingotBronze>,<ore:cobblestone>],[<ore:cobblestone>,<minecraft:redstone>,<ore:cobblestone>]],
	<storagedrawers:compdrawers> : [[<minecraft:stone>,<minecraft:stone>,<minecraft:stone>],[<minecraft:piston>,<ore:drawerBasic>,<minecraft:piston>],[<minecraft:stone>,<ore:ingotBronze>,<minecraft:stone>]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapAddShaped {
    recipes.addShaped(key, recipe);
}

val recipeMapAddShapeless = {
	<projectred-core:resource_item:301> * 8 : [<minecraft:flint>,<minecraft:flint>,<projectred-core:resource_item:300>],
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapAddShapeless {
    recipes.addShapeless(key, recipe);
}

val recipeMapErraseShapeless = {
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapErraseShapeless {
    recipes.remove(key);
	recipes.addShapeless(key, recipe);
}

print("############################_End of Recipe_############################");