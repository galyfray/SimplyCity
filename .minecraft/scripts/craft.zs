import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;

print("############################_Adding Recipe_############################");

val recipeWithFunc = {
	<thermalexpansion:satchel:1> :[[null, <ore:blockInvar>, null], [<ore:blockInvar>, <thermalexpansion:satchel>.marked("mark"), <ore:blockInvar>], [<ironchest:wood_iron_chest_upgrade>, <thermalfoundation:upgrade>, <ironchest:wood_iron_chest_upgrade>]],
	<thermalexpansion:satchel:2> : [[null, <ore:blockElectrum>, null], [<ore:blockElectrum>, <thermalexpansion:satchel:1>.marked("mark"), <ore:blockElectrum>], [<ironchest:iron_gold_chest_upgrade>, <thermalfoundation:upgrade:1>, <ironchest:iron_gold_chest_upgrade>]],
	<thermalexpansion:satchel:3> : [[null, <ore:blockSignalum>, null], [<ore:blockSignalum>, <thermalexpansion:satchel:2>.marked("mark"), <ore:blockSignalum>], [<ironchest:gold_diamond_chest_upgrade>, <thermalfoundation:upgrade:2>, <ironchest:gold_diamond_chest_upgrade>]],
	<thermalexpansion:satchel:4> : [[null, <ore:blockEnderium>, null], [<ore:blockEnderium>, <thermalexpansion:satchel:3>.marked("mark"), <ore:blockEnderium>], [<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}), <thermalfoundation:upgrade:3>, <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}})]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack]; 

var counter = 1;
for key,recipe in recipeWithFunc {
    recipes.addShaped("upgrade_recipe_" ~ counter, key, recipe, function(out,ins,cInfo){return ins.mark.withDamage(ins.mark.damage + 1);}, null);
    counter+=1;
}

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
	<matc:supremiumcrystal> : [[<mysticalagriculture:storage:4>,<thaumcraft:metal_void>,<mysticalagriculture:storage:4>],[<mysticalagriculture:storage:5>,<matc:superiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagriculture:storage:4>,<thaumcraft:metal_void>,<mysticalagriculture:storage:4>]],
	<mysticalagriculture:master_infusion_crystal> : [[<mysticalagradditions:storage>,<minecraft:iron_block>,<mysticalagradditions:storage>],[<mysticalagriculture:storage:5>,<matc:supremiumcrystal>,<mysticalagriculture:storage:5>],[<mysticalagradditions:storage>,<minecraft:iron_block>,<mysticalagradditions:storage>]],
	<environmentaltech:litherite>: [[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_battery_double>,<actuallyadditions:item_crystal:4>],[<actuallyadditions:item_coffee>,<mysticalagriculture:growth_accelerator>,<actuallyadditions:item_coffee>],[<actuallyadditions:item_crystal:4>,<actuallyadditions:item_battery_double>,<actuallyadditions:item_crystal:4>]],
	<immersiveengineering:stone_decoration>*3 : [[<ceramics:unfired_clay:4>,<immersiveengineering:stone_decoration:10>,<ceramics:unfired_clay:4>],[<immersiveengineering:stone_decoration:10>,<thaumcraft:ingot:2>,<immersiveengineering:stone_decoration:10>],[<ceramics:unfired_clay:4>,<immersiveengineering:stone_decoration:10>,<ceramics:unfired_clay:4>]],
	<immersiveengineering:metal_device1:13> : [[<actuallyadditions:item_crystal_empowered:4>,<mysticalagriculture:crafting:54>,<actuallyadditions:item_crystal_empowered:4>],[<extrautils2:ineffableglass:1>,<thaumcraft:ingot:1>,<extrautils2:ineffableglass:1>],[<immersiveengineering:treated_wood>,<mysticalagriculture:crafting:54>,<immersiveengineering:treated_wood>]],
	<immersiveengineering:metal_decoration0:3>*2 : [[<ore:ingotRedAlloy>,<thaumcraft:ingot>,<ore:ingotRedAlloy>],[<thaumcraft:ingot>,<thaumcraft:ingot:2>,<thaumcraft:ingot>],[<ore:ingotRedAlloy>,<thaumcraft:ingot>,<ore:ingotRedAlloy>]],
	<immersiveengineering:metal_decoration0:7>*2 : [[<thermalfoundation:material:352>,<magneticraft:heat_pipe>,<thermalfoundation:material:352>],[<magneticraft:heat_pipe>,<magneticraft:water_generator>,<magneticraft:heat_pipe>],[<thermalfoundation:material:352>,<magneticraft:heat_pipe>,<thermalfoundation:material:352>]],
	<immersiveengineering:metal_decoration0:5>*2 : [[<ore:plateSteel>,<immersiveengineering:material:9>,<ore:plateSteel>],[<ore:ingotBrass>,<thaumcraft:morphic_resonator>,<ore:ingotBrass>],[<ore:plateSteel>,<immersiveengineering:material:9>,<ore:plateSteel>]],
	<immersiveengineering:metal_decoration0:6>*2 : [[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],[<thaumcraft:mechanism_complex>,<magneticraft:rf_transformer>,<minecraft:redstone_block>],[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]],
	<immersiveengineering:metal_device0> : [[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],[<ore:ingotRedAlloy>,<thaumcraft:morphic_resonator>,<ore:ingotRedAlloy>],[<ore:plankTreatedWood>,<ore:blockRedstone>,<ore:plankTreatedWood>]],
	<immersiveengineering:metal_device0:1> : [[<ore:plateSteel>,<ore:ingotRedAlloy>,<ore:plateSteel>],[<thaumcraft:morphic_resonator>,<immersiveengineering:metal_device0>,<thaumcraft:morphic_resonator>],[<ore:plankTreatedWood>,<ore:blockRedstone>,<ore:plankTreatedWood>]],
	<immersiveengineering:metal_device0:2> : [[<ore:plateSteel>,<ore:ingotRedAlloy>,<ore:plateSteel>],[<thaumcraft:morphic_resonator>,<immersiveengineering:metal_device0:1>,<thaumcraft:morphic_resonator>],[<ore:plankTreatedWood>,<ore:blockRedstone>,<ore:plankTreatedWood>]],
	<immersiveengineering:material:9> : [[<ore:plateSteel>,null,<ore:plateSteel>],[null,<thaumcraft:mechanism_complex>,null],[<ore:plateSteel>,null,<ore:plateSteel>]],
	<immersiveengineering:material:8> : [[<ore:plateIron>,null,<ore:plateIron>],[null,<thaumcraft:mechanism_simple>,null],[<ore:plateIron>,null,<ore:plateIron>]],
	<magneticraft:rf_transformer> : [[<ore:plateIron>,<immersiveengineering:metal_device0>,<ore:plateIron>],[<thaumcraft:morphic_resonator>,<immersiveengineering:metal_decoration0:3>,<thaumcraft:morphic_resonator>],[<thaumcraft:mechanism_complex>,<magneticraft:multiblock_parts:4>,<thaumcraft:mechanism_complex>]],
	<magneticraft:wind_turbine> : [[<ore:plateAluminium>,<magneticraft:crafting:6>,<ore:plateAluminium>],[<magneticraft:crafting:6>,<magneticraft:multiblock_parts>,<magneticraft:crafting:6>],[<ore:plateAluminium>,<magneticraft:crafting:6>,<ore:plateAluminium>]],
	<immersiveengineering:metal_decoration0:4>*2 : [[<ore:plateIron>,<immersiveengineering:material:8>,<ore:plateIron>],[<thaumcraft:ingot:2>,<thaumcraft:ingot>,<thaumcraft:ingot:2>],[<ore:plateIron>,<immersiveengineering:material:8>,<ore:plateIron>]],
	<integrateddynamics:mechanical_squeezer> : [[<integrateddynamics:menril_log>,<immersiveengineering:material:9>,<integrateddynamics:menril_log>],[<integrateddynamics:energy_battery>,<actuallyadditions:block_misc:9>,<integrateddynamics:energy_battery>],[<integrateddynamics:menril_log>,<actuallyadditions:block_crystal_empowered>,<integrateddynamics:menril_log>]],
	<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}) : [[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],[<ore:cobblestone>,<ore:ingotIron>,<ore:cobblestone>],[<minecraft:redstone>,<actuallyadditions:block_coal_generator>,<minecraft:redstone>]],
	<extrautils2:machine>.withTag({Type: "extrautils2:generator"}) : [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[<ore:ingotIron>,<extrautils2:machine>,<ore:ingotIron>],[<minecraft:redstone>,<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),<minecraft:redstone>]],
	<actuallyadditions:block_misc:9> : [[<immersiveengineering:material:8>,<immersiveengineering:material>,<immersiveengineering:material:8>],[<immersiveengineering:material>,<jaopca:item_gearquartzblack>,<immersiveengineering:material>],[<immersiveengineering:material:8>,<immersiveengineering:material>,<immersiveengineering:material:8>]],
	<minecraft:elytra> : [[<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>],[<mysticalagradditions:dragon_egg_essence>,<minecraft:leather_chestplate>,<mysticalagradditions:dragon_egg_essence>],[<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>,<mysticalagradditions:dragon_egg_essence>]],
	<projectred-expansion:jetpack> : [[<projectred-expansion:charged_battery>, null, <projectred-expansion:charged_battery>], [<projectred-expansion:charged_battery>, <mysticalagriculture:inferium_chestplate>, <projectred-expansion:charged_battery>], [<tconstruct:large_plate>, <projectred-expansion:machine2:5>, <tconstruct:large_plate>]],
	<simplyjetpacks:metaitemmods:26> : [[<ore:blockLead>, <extrautils2:chickenring>, <ore:blockLead>], [<projectred-expansion:jetpack>, <magneticraft:rf_transformer>, <projectred-expansion:jetpack>], [<ore:blockLead>, <extrautils2:drum>, <ore:blockLead>]],
	<simplyjetpacks:metaitemmods:27> : [[<actuallyadditions:item_crystal_empowered:5>, <extrautils2:chickenring:1>, <actuallyadditions:item_crystal_empowered:5>], [<actuallyadditions:item_crystal_empowered:5>, <extrautils2:drum:1>, <actuallyadditions:item_crystal_empowered:5>], [<ore:ingotRedAlloy>, null, <ore:ingotRedAlloy>]],
	<simplyjetpacks:metaitemmods:28> : [[<ore:blockLumium>, <extrautils2:chickenring:1>, <ore:blockLumium>], [<ore:blockLumium>, <simplyjetpacks:metaitemmods:27>, <ore:blockLumium>], [<actuallyadditions:block_crystal_empowered>, <extrautils2:drum:2>, <actuallyadditions:block_crystal_empowered>]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapErraseShaped {
	recipes.remove(key);
    recipes.addShaped(key, recipe);
}

val recipeMapErraseShapedLarger = {
	<thermalexpansion:frame> :[[<ore:plateMithril>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateMithril>], 
	[<ore:plateIridium>, <ore:xuUpgradeSpeedEnchanted>, <ore:gearMithril>, <ore:xuUpgradeSpeedEnchanted>, <ore:plateIridium>], 
	[<ore:plateIridium>, <ore:gearMithril>, <extrautils2:machine>, <ore:gearMithril>, <ore:plateIridium>], 
	[<ore:plateIridium>, <ore:xuUpgradeSpeedEnchanted>, <ore:gearMithril>, <ore:xuUpgradeSpeedEnchanted>, <ore:plateIridium>], 
	[<ore:plateMithril>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateMithril>]],
	
	<thermalexpansion:frame:64> : [[<ore:plateNickel>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateNickel>], 
	[<ore:plateAluminium>, <ore:coalPowered>, <ore:gearIridium>, <ore:coalPowered>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <ore:gearIridium>, <actuallyadditions:block_misc:9>, <ore:gearIridium>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <ore:coalPowered>, <ore:gearIridium>, <ore:coalPowered>, <ore:plateAluminium>], 
	[<ore:plateNickel>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateNickel>]],
	
	<thermalexpansion:frame:128> : [[<ore:ingotMithril>, <ore:ingotMithril>, <ore:plateElectrum>, <ore:ingotMithril>, <ore:ingotMithril>], 
	[<ore:ingotMithril>, <extrautils2:klein>, <thaumcraft:morphic_resonator>, <extrautils2:klein>, <ore:ingotMithril>], 
	[<ore:plateElectrum>, <thaumcraft:morphic_resonator>, <immersiveengineering:metal_device0:2>, <thaumcraft:morphic_resonator>, <ore:plateElectrum>], 
	[<ore:ingotMithril>, <extrautils2:klein>, <thaumcraft:morphic_resonator>, <extrautils2:klein>, <ore:ingotMithril>], 
	[<ore:ingotMithril>, <ore:ingotMithril>, <ore:plateElectrum>, <ore:ingotMithril>, <ore:ingotMithril>]],
	
	<thermalfoundation:material:513> : [[null, null, <extrautils2:decorativeglass>, <ore:plateGold>, <ore:plateGold>], 
	[null, <extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:coalPowered>, <ore:plateGold>], 
	[<extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:plateGold>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>], 
	[<ore:plateGold>, <ore:coalPowered>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>, null], 
	[<ore:plateGold>, <ore:plateGold>, <extrautils2:decorativeglass>, null, null]],
	
	<thermalfoundation:material:514>: [[null, null, <extrautils2:decorativeglass>, <ore:plateIridium>, <ore:plateIridium>], 
	[null, <extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:coalPowered>, <ore:plateIridium>], 
	[<extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:plateIridium>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>], 
	[<ore:plateIridium>, <ore:coalPowered>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>, null], 
	[<ore:plateIridium>, <ore:plateIridium>, <extrautils2:decorativeglass>, null, null]],
	
	<thermalfoundation:material:515> : [[null, null, <extrautils2:decorativeglass>, <ore:plateElectrum>, <ore:plateElectrum>], 
	[null, <extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:coalPowered>, <ore:plateElectrum>], 
	[<extrautils2:decorativeglass>, <ore:xuUpgradeSpeed>, <ore:plateElectrum>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>], 
	[<ore:plateElectrum>, <ore:coalPowered>, <ore:xuUpgradeSpeed>, <extrautils2:decorativeglass>, null], 
	[<ore:plateElectrum>, <ore:plateElectrum>, <extrautils2:decorativeglass>, null, null]],
	
	<thermalfoundation:upgrade> : [[<ore:blockInvar>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:blockInvar>], 
	[<ore:blockInvar>, <extrautils2:decorativesolid:7>, <ore:xuUpgradeSpeedEnchanted>, <extrautils2:decorativesolid:7>, <ore:blockInvar>], 
	[<ore:blockInvar>, <ore:xuUpgradeStack>, <extrautils2:opinium:1>, <ore:xuUpgradeStack>, <ore:blockInvar>], 
	[<ore:blockInvar>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <ore:blockInvar>], 
	[<ore:blockInvar>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:blockInvar>]],
	
	<thermalfoundation:upgrade:1> : [[<ore:blockElectrum>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:blockElectrum>], 
	[<ore:blockElectrum>, <extrautils2:decorativesolid:7>, <ore:xuUpgradeSpeedEnchanted>, <extrautils2:decorativesolid:7>, <ore:blockElectrum>], 
	[<ore:blockElectrum>, <ore:xuUpgradeStack>, <extrautils2:opinium:3>, <ore:xuUpgradeStack>, <ore:blockElectrum>], 
	[<ore:blockElectrum>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <extrautils2:decorativesolid:7>, <ore:blockElectrum>], 
	[<ore:blockElectrum>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:blockElectrum>]],
	
	<thermalfoundation:upgrade:2> : [[<ore:blockSignalum>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:blockSignalum>], 
	[<ore:blockSignalum>, <ore:dustCryotheum>, <ore:xuUpgradeSpeedEnchanted>, <ore:dustCryotheum>, <ore:blockSignalum>], 
	[<ore:blockSignalum>, <ore:xuUpgradeSpeedEnchanted>, <extrautils2:opinium:6>, <ore:xuUpgradeSpeedEnchanted>, <ore:blockSignalum>], 
	[<ore:blockSignalum>, <ore:dustCryotheum>, <actuallyadditions:block_crystal_empowered:3>, <ore:dustCryotheum>, <ore:blockSignalum>], 
	[<ore:blockSignalum>, <ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>, <ore:blockSignalum>]],
	
	<thermalfoundation:upgrade:3> : [[<ore:blockEnderium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <forge:bucketfilled>, <ore:xuUpgradeSpeedEnchanted>, <forge:bucketfilled>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <ore:xuUpgradeSpeedEnchanted>, <extrautils2:opinium:8>, <ore:xuUpgradeSpeedEnchanted>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <forge:bucketfilled>, <extendedcrafting:trimmed:4>, <forge:bucketfilled>, <ore:blockEnderium>], 
	[<ore:blockEnderium>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <ore:blockEnderium>]],
	
	<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearCopper>, <ore:gearCopper>, <ore:gearCopper>, <ore:blockMithril>], 
	[<ore:blockCopper>, <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), <ore:plateAluminium>, <ore:blockCopper>], 
	[<ore:blockCopper>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockCopper>]],

	<thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearInvar>, <ore:gearInvar>, <ore:gearInvar>, <ore:blockMithril>], 
	[<ore:blockInvar>, <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), <ore:plateAluminium>, <ore:blockInvar>], 
	[<ore:blockInvar>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockInvar>]],
	
	<thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearTin>, <ore:gearTin>, <ore:gearTin>, <ore:blockMithril>], 
	[<ore:blockTin>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), <ore:blockTin>], 
	[<ore:blockTin>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockTin>]],
	
	<thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [
	[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearLead>, <ore:gearLead>, <ore:gearLead>, <ore:blockMithril>], 
	[<ore:blockLead>, <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), <ore:plateAluminium>, <ore:blockLead>], 
	[<ore:blockLead>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockLead>]],
	
	<thermalexpansion:dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [
	[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearElectrum>, <ore:gearElectrum>, <ore:gearElectrum>, <ore:blockMithril>], 
	[<ore:blockElectrum>, <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), <ore:plateAluminium>, <ore:blockElectrum>], 
	[<ore:blockElectrum>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockElectrum>]],
	
	<thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}) : [
	[null, <ore:ingotRedAlloy>, <thermalfoundation:material:514>, <ore:ingotRedAlloy>, null], 
	[null, <ore:ingotRedAlloy>, <magneticraft:rf_transformer>, <ore:ingotRedAlloy>, null], 
	[<ore:blockMithril>, <ore:gearConstantan>, <ore:gearConstantan>, <ore:gearConstantan>, <ore:blockMithril>], 
	[<ore:blockConstantan>, <ore:plateAluminium>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), <ore:plateAluminium>, <ore:blockConstantan>], 
	[<ore:blockConstantan>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>, <ore:blockConstantan>]],
	
	<thermalexpansion:capacitor>.withTag({Energy:0}) : [[null, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, null], 
	[null, <ore:blockCopper>, <ore:blockSulfur>, <ore:blockCopper>, null], 
	[<ore:blockLead>, <ore:blockRedstone>, <immersiveengineering:metal_device0:2>, <ore:blockRedstone>, <ore:blockLead>], 
	[<ore:plateMithril>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, null, <ore:plateMithril>, <ore:plateMithril>]],
	
	<thermalexpansion:capacitor:1>.withTag({Energy: 0}) : [[null, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, null], 
	[null, <ore:blockTin>, <ore:blockSulfur>, <ore:blockTin>, null], 
	[<ore:blockInvar>, <ore:blockRedstone>, <thermalexpansion:capacitor>, <ore:blockRedstone>, <ore:blockInvar>], 
	[<ore:plateMithril>, <ore:blockRedstone>, <thermalfoundation:upgrade>, <ore:blockRedstone>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, null, <ore:plateMithril>, <ore:plateMithril>]],
	
	<thermalexpansion:capacitor:2>.withTag({Energy: 0}) : [
	[null, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, null], 
	[null, <ore:blockGlassHardened>, <ore:blockSulfur>, <ore:blockGlassHardened>, null], 
	[<ore:blockElectrum>, <ore:blockRedstone>, <thermalexpansion:capacitor:1>, <ore:blockRedstone>, <ore:blockElectrum>], 
	[<ore:plateMithril>, <ore:blockRedstone>, <thermalfoundation:upgrade:1>, <ore:blockRedstone>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, null, <ore:plateMithril>, <ore:plateMithril>]],
	
	<thermalexpansion:capacitor:3>.withTag({Energy: 0}) : [[null, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, null], 
	[null, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), <ore:blockSulfur>, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), null], 
	[<ore:blockSignalum>, <ore:blockRedstone>, <thermalexpansion:capacitor:2>, <ore:blockRedstone>, <ore:blockSignalum>], 
	[<ore:plateMithril>, <ore:blockRedstone>, <thermalfoundation:upgrade:2>, <ore:blockRedstone>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, null, <ore:plateMithril>, <ore:plateMithril>]],
	
	<thermalexpansion:capacitor:4>.withTag({Energy: 0}) : [[null, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, null], 
	[null, <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}), <ore:blockSulfur>, <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}), null], 
	[<ore:blockEnderium>, <ore:blockRedstone>, <thermalexpansion:capacitor:3>, <ore:blockRedstone>, <ore:blockEnderium>], 
	[<ore:plateMithril>, <ore:blockRedstone>, <thermalfoundation:upgrade:3>, <ore:blockRedstone>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, null, <ore:plateMithril>, <ore:plateMithril>]],
	
	<thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 24 as short}], Inventory: {}, Accessible: 1 as byte}): [[<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:plateMithril>], 
	[<ore:plateMithril>, <actuallyadditions:block_giant_chest>, <extrautils2:opinium:2>, <actuallyadditions:block_giant_chest>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:blockMagicalWood>, <actuallyadditions:block_giant_chest>, <ore:blockMagicalWood>, <ore:plateMithril>], 
	[<ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>]],
	
	<appliedenergistics2:energy_acceptor> : [[<thermalexpansion:frame>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <thermalexpansion:frame>], 
	[<ore:plateMithril>, <thermalexpansion:capacitor>, <appliedenergistics2:fluix_block>, <thermalexpansion:capacitor>, <ore:plateMithril>], 
	[<ore:plateMithril>, <appliedenergistics2:fluix_block>, <thaumcraft:morphic_resonator>, <appliedenergistics2:fluix_block>, <ore:plateMithril>], 
	[<ore:plateMithril>, <thermalexpansion:capacitor>, <appliedenergistics2:fluix_block>, <thermalexpansion:capacitor>, <ore:plateMithril>], 
	[<thermalexpansion:frame>, <ore:plateMithril>, <ore:plateMithril>, <ore:plateMithril>, <thermalexpansion:frame>]],
	
	<appliedenergistics2:controller> : [[<appliedenergistics2:sky_stone_block>, <appliedenergistics2:sky_stone_block>, <thermalexpansion:capacitor:1>, <appliedenergistics2:sky_stone_block>, <appliedenergistics2:sky_stone_block>], 
	[<appliedenergistics2:sky_stone_block>, <ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>, <appliedenergistics2:sky_stone_block>], 
	[<thaumcraft:morphic_resonator>, <ore:crystalPureFluix>, <thermalexpansion:frame>, <ore:crystalPureFluix>, <thaumcraft:morphic_resonator>], 
	[<appliedenergistics2:sky_stone_block>, <ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>, <appliedenergistics2:sky_stone_block>], 
	[<appliedenergistics2:sky_stone_block>, <appliedenergistics2:sky_stone_block>, <thermalexpansion:capacitor:1>, <appliedenergistics2:sky_stone_block>, <appliedenergistics2:sky_stone_block>]],
	
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapErraseShapedLarger {
	recipes.remove(key);
    mods.extendedcrafting.TableCrafting.addShaped(key,recipe);
}

val recipeMapErraseShapeless = {
	<environmentaltech:litherite_crystal> : [<environmentaltech:litherite>],
	<magneticraft:steam_engine> : [<minecraft:paper>,<ore:plateBronze>,<minecraft:redstone>],
	<magneticraft:electric_engine> : [<magneticraft:rf_transformer>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapErraseShapeless {
    recipes.remove(key);
	recipes.addShapeless(key, recipe);
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
	<immersiveengineering:blueprint>.withTag({blueprint: "thaumic"}) : [[<thaumcraft:mechanism_complex>,<thaumcraft:morphic_resonator>,<thaumcraft:mechanism_complex>],[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],[<ore:paper>,<ore:paper>,<ore:paper>]],
	<simplyjetpacks:itemjetpack:10> : [[<ore:plateLead>, <magneticraft:battery_item_low>, <ore:plateLead>], [<ore:plateLead>, <simplyjetpacks:metaitem:4>, <ore:plateLead>], [<simplyjetpacks:metaitemmods:26>, null, <simplyjetpacks:metaitemmods:26>]],
	<simplyjetpacks:itemjetpack:11> : [[<ore:plateInvar>, <immersiveengineering:metal_device0:1>, <ore:plateInvar>],[<ore:plateInvar>, <simplyjetpacks:itemjetpack:10>, <ore:plateInvar>],[<simplyjetpacks:metaitemmods:27>, null, <simplyjetpacks:metaitemmods:27>]],
	// : [[,,],[,,],[,,]],
} as IIngredient[][][IItemStack];

for key,recipe in recipeMapAddShaped {
    recipes.addShaped(key, recipe);
}

val recipeMapAddShapeless = {
	<projectred-core:resource_item:301> * 8 : [<minecraft:flint>,<minecraft:flint>,<projectred-core:resource_item:300>],
	<environmentaltech:litherite> :[<environmentaltech:litherite_stairs>],
	<environmentaltech:litherite> : [<ore:blockLitherite>],
	<environmentaltech:litherite> : [<environmentaltech:litherite_slab>,<environmentaltech:litherite_slab>],
	<magneticraft:rf_transformer> : [<magneticraft:electric_engine>],
} as IIngredient[][IItemStack];

for key,recipe in recipeMapAddShapeless {
    recipes.addShapeless(key, recipe);
}

print("############################_End of Recipe_############################");