import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("############################_Adding Recipe_############################");

val recipeMapErraseShaped = {
    <magneticraft:crafting:5> : [[<ore:plateBronze>,<minecraft:string>,<ore:plateBronze>],[<minecraft:string>,<ore:plateBronze>,<minecraft:string>],[<ore:plateBronze>,<minecraft:string>,<ore:plateBronze>]],
	<magneticraft:water_generator> : [[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],[<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).noReturn(),<magneticraft:iron_pipe> ,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)|<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}).noReturn()],[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>]],
	<magneticraft:iron_pipe> * 8 : [[<minecraft:glass>,<ore:plateAluminum>,<minecraft:glass>],[<ore:plateAluminum>,<ore:blockGlass>,<ore:plateAluminum>],[<minecraft:glass>,<ore:plateAluminum>,<minecraft:glass>]],
	<projectred-transportation:pipe:3> : [[<minecraft:redstone>,<projectred-core:resource_item:104>,<minecraft:redstone>],[<minecraft:redstone>,<projectred-transportation:pipe:1>,<minecraft:redstone>],[<minecraft:redstone>,<projectred-core:resource_item:104>,<minecraft:redstone>]],
	<magneticraft:wrench> : [[null,<ore:plateAluminum>,<ore:ingotBronze>],[<minecraft:redstone>,<ore:ingotBronze>,null],[<ore:ingotBronze>,<minecraft:redstone>,null]],
	<projectred-transportation:pipe:1> * 8 : [[<projectred-core:resource_item:514>,<projectred-core:resource_item:320>,<projectred-core:resource_item:513>],[<projectred-core:resource_item:104>,<ore:paneGlass>,<projectred-core:resource_item:104>],[<projectred-core:resource_item:514>,<projectred-core:resource_item:320>,<projectred-core:resource_item:513>]],
	<projectred-transportation:routing_chip> : [[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>]],
	<projectred-transportation:routing_chip:1> : [[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<projectred-core:resource_item:509>],[<projectred-core:resource_item:501>,<minecraft:redstone>,<projectred-core:resource_item:501>]],
	<projectred-transportation:routing_chip:2> : [[<projectred-core:resource_item:513>,<minecraft:redstone>,<projectred-core:resource_item:513>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:513>,<minecraft:redstone>,<projectred-core:resource_item:513>]],
	<projectred-transportation:routing_chip:3> : [[<projectred-core:resource_item:510>,<minecraft:redstone>,<projectred-core:resource_item:507>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:510>,<minecraft:redstone>,<projectred-core:resource_item:507>]],
	<projectred-transportation:routing_chip:4> : [[<projectred-core:resource_item:509>,<minecraft:redstone>,<projectred-core:resource_item:509>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:509>,<minecraft:redstone>,<projectred-core:resource_item:509>]],
	<projectred-transportation:routing_chip:6> : [[<projectred-core:resource_item:511>,<minecraft:redstone>,<projectred-core:resource_item:511>],[<ore:ingotAluminum>,<projectred-core:resource_item:600>,<minecraft:redstone>],[<projectred-core:resource_item:511>,<minecraft:redstone>,<projectred-core:resource_item:511>]],
	<minecraft:chest> : [[<ore:logWood>,<ore:plankWood>,<ore:logWood>],[<ore:plankWood>,<minecraft:flint>,<ore:plankWood>],[<ore:logWood>,<ore:plankWood>,<ore:logWood>]],
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
	<extrautils2:crafter> : [[<extrautils2:ingredients:1>,<avaritia:compressed_crafting_table>,<extrautils2:ingredients>],[<avaritia:compressed_crafting_table>,<extrautils2:analogcrafter>,<avaritia:compressed_crafting_table>],[<extrautils2:redstoneclock>,<avaritia:compressed_crafting_table>,<extrautils2:redstoneclock>]],
	<actuallyadditions:block_giant_chest> : [[<ore:plankWood>,<ironchest:iron_chest:3>,<ore:plankWood>],[<ironchest:iron_chest:3>,<actuallyadditions:block_misc:4>,<ironchest:iron_chest:3>],[<ore:plankWood>,<ironchest:iron_chest:3>,<ore:plankWood>]],
	<actuallyadditions:block_misc:4> : [[<minecraft:stick>,<tconstruct:large_plate>.withTag({Material: "wood"}),<minecraft:stick>],[<tconstruct:large_plate>.withTag({Material: "wood"}),<ore:logWood>,<tconstruct:large_plate>.withTag({Material: "wood"})],[<minecraft:stick>,<tconstruct:large_plate>.withTag({Material: "wood"}),<minecraft:stick>]],
	<minecraft:furnace> : [[<extrautils2:compressedcobblestone:1>,<minecraft:cobblestone_wall>,<extrautils2:compressedcobblestone:1>],[<minecraft:cobblestone_wall>,<minecraft:coal:*>,<minecraft:cobblestone_wall>],[<extrautils2:compressedcobblestone:1>,<minecraft:cobblestone_wall>,<extrautils2:compressedcobblestone:1>]],
	<matc:inferiumcrystal> : [[<mysticalagriculture:storage:5>,<mysticalagriculture:storage>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage>,<ore:ingotBronze>,<mysticalagriculture:storage>],[<mysticalagriculture:storage:5>,<mysticalagriculture:storage>,<mysticalagriculture:storage:5>]],
	<matc:prudentiumcrystal> : [[<mysticalagriculture:storage:1>,<minecraft:iron_block>,<mysticalagriculture:storage:1>],[<mysticalagriculture:storage:5>,<matc:inferiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage:1>,<minecraft:iron_block>,<mysticalagriculture:storage:1>]],
	<matc:intermediumcrystal> : [[<mysticalagriculture:storage:2>,<ore:blockSteel>,<mysticalagriculture:storage:2>],[<mysticalagriculture:storage:5>,<matc:prudentiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage:2>,<ore:blockSteel>,<mysticalagriculture:storage:2>]],
	<matc:superiumcrystal> : [[<mysticalagriculture:storage:3>,<minecraft:diamond_block>,<mysticalagriculture:storage:3>],[<mysticalagriculture:storage:5>,<matc:intermediumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage:3>,<minecraft:diamond_block>,<mysticalagriculture:storage:3>]],
	<matc:supremiumcrystal> : [[<mysticalagriculture:storage:4>,<minecraft:iron_block>,<mysticalagriculture:storage:4>],[<mysticalagriculture:storage:5>,<matc:superiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage:4>,<minecraft:iron_block>,<mysticalagriculture:storage:4>]],
	<mysticalagriculture:master_infusion_crystal> : [[<mysticalagradditions:storage>,<minecraft:iron_block>,<mysticalagradditions:storage>],[<mysticalagriculture:storage:5>,<matc:supremiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagradditions:storage>,<minecraft:iron_block>,<mysticalagradditions:storage>]],
	<environmentaltech:litherite>: [[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_battery_double>,<actuallyadditions:item_crystal:4>],[<actuallyadditions:item_coffee>,<mysticalagriculture:growth_accelerator>,<actuallyadditions:item_coffee>],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_battery_double>,<actuallyadditions:item_crystal:4>]],
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
	<actuallyadditions:block_misc:4> : [[<minecraft:stick>,<ore:plankTreatedWood>,<minecraft:stick>],[<ore:plankTreatedWood>,<ore:logWood>,<ore:plankTreatedWood>],[<minecraft:stick>,<ore:plankTreatedWood>,<minecraft:stick>]],
	<minecraft:chest> *4 : [[<ore:logWood>,<ore:plankTreatedWood>,<ore:logWood>],[<ore:plankTreatedWood>,<minecraft:iron_nugget>,<ore:plankTreatedWood>],[<ore:logWood>,<ore:plankTreatedWood>,<ore:logWood>]],
	<mysticalagriculture:crafting:32> : [[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>],[<mysticalagriculture:crafting:5>,<ore:ingotBronze>,<mysticalagriculture:crafting:5>],[<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>,<mysticalagriculture:crafting:5>]],
	<environmentaltech:litherite> : [[<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>],[<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>],[<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapAddShaped {
    recipes.addShaped(key, recipe);
}

val recipeMapAddShapeless = {
	<projectred-core:resource_item:301> * 8 : [<minecraft:flint>,<minecraft:flint>,<projectred-core:resource_item:300>],
	<environmentaltech:litherite> :[<environmentaltech:litherite_stairs>],
	<environmentaltech:litherite> : [<ore:blockLitherite>],
	<environmentaltech:litherite> : [<environmentaltech:litherite_slab>,<environmentaltech:litherite_slab>]
} as IIngredient[][IItemStack];

for key,recipe in recipeMapAddShapeless {
    recipes.addShapeless(key, recipe);
}

val recipeMapErraseShapeless = {
	<environmentaltech:litherite_crystal> : [<environmentaltech:litherite>],
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapErraseShapeless {
    recipes.remove(key);
	recipes.addShapeless(key, recipe);
}

recipes.remove(<mysticalagriculture:growth_accelerator>);

mods.extendedcrafting.TableCrafting.addShaped(<mysticalagriculture:growth_accelerator>, [
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:storage:1>       , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:prudentium_apple>, <mysticalagriculture:crafting:52>     , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:prudentium_apple>,<mysticalagriculture:crafting:52>     , <mysticalagriculture:ingot_storage:6> , <mysticalagriculture:crafting:52>, <mysticalagriculture:prudentium_apple>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:prudentium_apple>, <mysticalagriculture:crafting:52>     , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>],
	[<mysticalagriculture:storage:1>       ,<mysticalagriculture:storage:1>       , <mysticalagriculture:prudentium_apple>, <mysticalagriculture:storage:1>, <mysticalagriculture:storage:1>]]);

print("############################_End of Recipe_############################");