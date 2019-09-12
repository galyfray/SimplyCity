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
	
} as IItemStack[IItemStack];

for output,input in recipeMap {
	mods.magneticraft.CrushingTable.addRecipe(output,input,false);
}


mods.magneticraft.HydraulicPress.addRecipe(<minecraft:coal_block>*9,<minecraft:diamond>,600,2,true);
