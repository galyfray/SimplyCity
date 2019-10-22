import mods.magneticraft.CrushingTable ;
import crafttweaker.item.IItemStack;
import mods.magneticraft.HydraulicPress;

mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ore>);

val HammerMap = {
	// <Tool> : [mining level, speed , durability cost]
	<thermalfoundation:tool.hammer_aluminum> : [1,2,2],
	<thermalfoundation:tool.hammer_bronze> : [3,6,1],
	<thermalfoundation:tool.hammer_constantan> : [2,3,4],
	<thermalfoundation:tool.hammer_copper> : [1,2,1],
	<thermalfoundation:tool.hammer_diamond> : [5,10,25],
	<thermalfoundation:tool.hammer_electrum> : [0,1,20],
	<thermalfoundation:tool.hammer_gold> : [0,1,25],
	<thermalfoundation:tool.hammer_invar> : [4,12,1],
	<thermalfoundation:tool.hammer_iron> : [4,8,1],
	<thermalfoundation:tool.hammer_lead> : [1,1,20],
	<thermalfoundation:tool.hammer_nickel> : [2,5,1],
	<thermalfoundation:tool.hammer_platinum> : [5,18,1],
	<thermalfoundation:tool.hammer_silver> : [1,2,1],
	<thermalfoundation:tool.hammer_steel> : [4,15,1],
	<thermalfoundation:tool.hammer_tin> : [2,2,3],
}as int[][IItemStack] ;

for hammer, array in HammerMap {
	mods.magneticraft.CrushingTable.addHammer(hammer,array[0],array[1],array[2]);
}

val recipeMap = {
	<thermalfoundation:storage_alloy:3>:<thermalfoundation:material:355>*5,
	<thermalfoundation:storage:4> : <thermalfoundation:material:324>*5,
	<magneticraft:chunks:13> : <thermalfoundation:material:65>*2,
	<thermalfoundation:material:129> : <thermalfoundation:material:65>,
	<magneticraft:chunks:3> : <thermalfoundation:material:67>*2,
	<thermalfoundation:material:131> : <thermalfoundation:material:67>,
} as IItemStack[IItemStack];

for output,input in recipeMap {
	mods.magneticraft.CrushingTable.addRecipe(output,input,true);
}

mods.magneticraft.CrushingTable.removeRecipe(<thermalfoundation:material:160>);

mods.magneticraft.HydraulicPress.removeRecipe(<thermalfoundation:material:160>,1);

mods.magneticraft.HydraulicPress.addRecipe(<minecraft:coal_block>*9,<minecraft:diamond>,600,2,true);
mods.magneticraft.HydraulicPress.addRecipe(<thaumcraft:metal_brass>,<thaumcraft:plate>*5,200,0,true);
mods.magneticraft.HydraulicPress.addRecipe(<thermalfoundation:storage_alloy>,<thermalfoundation:material:160>*5,100,0,true);
mods.magneticraft.HydraulicPress.addRecipe(<thaumcraft:metal_thaumium>,<thaumcraft:plate:2>*5,150,0,true);
mods.magneticraft.HydraulicPress.addRecipe(<thermalfoundation:material:163>,<thermalfoundation:material:355>,150,0,true);
