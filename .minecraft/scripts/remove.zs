import crafttweaker.item.IItemStack;

val ItemRecipe = {
	<thermalfoundation:material> : [32,33,320,322,323,324,325,352,353,355,356],
	<thaumcraft:plate> : [0,1,2,3],
	//<magneticraft:light_plates> : [0,1,2,3,5,6],
} as int[][IItemStack] ;

for item,range in ItemRecipe {
	for meta in range{
		recipes.remove(item.definition. makeStack(meta));
	}
}

val RemoveAndHide ={
	<thermalfoundation:armor.plate_silver> : [0],
	<thermalfoundation:armor.plate_tin> : [0],
	<thermalfoundation:armor.plate_copper> : [0],
	<minecraft:iron_chestplate> : [0],
	<actuallyadditions:item_chest_obsidian> : [0],
	<minecraft:golden_chestplate> : [0],
	<thermalfoundation:armor.plate_aluminum> : [0],
	<thermalfoundation:armor.plate_nickel> : [0],
	<thermalfoundation:armor.plate_platinum> : [0],
	<thermalfoundation:armor.plate_steel> : [0],
	<thermalfoundation:armor.plate_electrum> : [0],
	<thermalfoundation:armor.plate_invar> : [0],
	<thermalfoundation:armor.plate_constantan> : [0],
	<thermalfoundation:armor.plate_bronze> : [0],
	<thermalfoundation:armor.plate_lead> : [0],
} as int[][IItemStack] ;

for item,range in RemoveAndHide {
	for meta in range{
		mods.jei.JEI.removeAndHide(item.definition. makeStack(meta),false);
	}
}