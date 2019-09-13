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
	<thermalfoundation:armor.plate_aluminum> : [0],
	<thermalfoundation:armor.plate_nickel> : [0],
	<thermalfoundation:armor.plate_platinum> : [0],
	<thermalfoundation:armor.plate_steel> : [0],
	<thermalfoundation:armor.plate_electrum> : [0],
	<thermalfoundation:armor.plate_invar> : [0],
	<thermalfoundation:armor.plate_constantan> : [0],
	<thermalfoundation:armor.plate_bronze> : [0],
	<thermalfoundation:armor.plate_lead> : [0],
	<minecraft:iron_chestplate> : [0],
	<minecraft:golden_chestplate> : [0],
	<actuallyadditions:item_chest_obsidian> : [0],
	<thermalfoundation:armor.boots_silver> : [0],
	<thermalfoundation:armor.boots_tin> : [0],
	<thermalfoundation:armor.boots_copper> : [0],
	<thermalfoundation:armor.boots_aluminum> : [0],
	<thermalfoundation:armor.boots_nickel> : [0],
	<thermalfoundation:armor.boots_platinum> : [0],
	<thermalfoundation:armor.boots_steel> : [0],
	<thermalfoundation:armor.boots_electrum> : [0],
	<thermalfoundation:armor.boots_invar> : [0],
	<thermalfoundation:armor.boots_constantan> : [0],
	<thermalfoundation:armor.boots_bronze> : [0],
	<thermalfoundation:armor.boots_lead> : [0],
	<minecraft:iron_boots> : [0],
	<minecraft:golden_boots> : [0],
	<actuallyadditions:item_boots_obsidian> : [0],
	<thermalfoundation:armor.helmet_silver> : [0],
	<thermalfoundation:armor.helmet_tin> : [0],
	<thermalfoundation:armor.helmet_copper> : [0],
	<thermalfoundation:armor.helmet_aluminum> : [0],
	<thermalfoundation:armor.helmet_nickel> : [0],
	<thermalfoundation:armor.helmet_platinum> : [0],
	<thermalfoundation:armor.helmet_steel> : [0],
	<thermalfoundation:armor.helmet_electrum> : [0],
	<thermalfoundation:armor.helmet_invar> : [0],
	<thermalfoundation:armor.helmet_constantan> : [0],
	<thermalfoundation:armor.helmet_bronze> : [0],
	<thermalfoundation:armor.helmet_lead> : [0],
	<minecraft:iron_helmet> : [0],
	<minecraft:golden_helmet> : [0],
	<actuallyadditions:item_helm_obsidian> : [0],
	<thermalfoundation:armor.legs_silver> : [0],
	<thermalfoundation:armor.legs_tin> : [0],
	<thermalfoundation:armor.legs_copper> : [0],
	<thermalfoundation:armor.legs_aluminum> : [0],
	<thermalfoundation:armor.legs_nickel> : [0],
	<thermalfoundation:armor.legs_platinum> : [0],
	<thermalfoundation:armor.legs_steel> : [0],
	<thermalfoundation:armor.legs_electrum> : [0],
	<thermalfoundation:armor.legs_invar> : [0],
	<thermalfoundation:armor.legs_constantan> : [0],
	<thermalfoundation:armor.legs_bronze> : [0],
	<thermalfoundation:armor.legs_lead> : [0],
	<minecraft:iron_leggings> : [0],
	<minecraft:golden_leggings> : [0],
	<actuallyadditions:item_pants_obsidian> : [0],
} as int[][IItemStack] ;

for item,range in RemoveAndHide {
	for meta in range{
		mods.jei.JEI.removeAndHide(item.definition. makeStack(meta),false);
	}
}
