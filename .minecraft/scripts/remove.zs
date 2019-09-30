#priority 9001
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
val ItemRecipe = {
	<thermalfoundation:material> : [22,23,24,25,26,27,32,33,256,257,258,259,260,261,262,263,264,288,289,290,291,292,293,294,295,320,322,323,324,325,352,353,355,356],
	<thaumcraft:plate> : [0,1,2,3],
	<jaopca:item_gearquartzblack> : [0],
	<environmentaltech:diode> : [0],
	<thermaldynamics:duct_16> : [0,1],
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

val removeByRecipeShaped = {
	<thermalexpansion:satchel>: [[null,<*>,null],[<*>,<*>,<*>],[<*>,null,<*>]],
	<thermalexpansion:satchel:1>: [[null,<*>,null],[<*>,<*>,<*>],[<*>,null,<*>]],
	<thermalexpansion:satchel:2>: [[null,<*>,null],[<*>,<*>,<*>],[<*>,null,<*>]],
	<thermalexpansion:satchel:3>: [[null,<*>,null],[<*>,<*>,<*>],[<*>,null,<*>]],
	<thermalexpansion:satchel:4>: [[null,<*>,null],[<*>,<*>,<*>],[<*>,null,<*>]],
	<thermalexpansion:capacitor> : [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<thermalexpansion:capacitor:1> : [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<thermalexpansion:capacitor:2> : [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<thermalexpansion:capacitor:3> : [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<thermalexpansion:capacitor:4> : [[null,<*>,null],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<simplyjetpacks:itemjetpack:10> : [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,null,<*>]],
	<simplyjetpacks:itemjetpack:11> : [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,null,<*>]],
	<simplyjetpacks:itemjetpack:12> : [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,null,<*>]],
	<simplyjetpacks:itemjetpack:13> : [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,null,<*>]],
	<extrautils2:angelring> : [[<*>,<*>,<*>],[<*>,<*>,<*>],[<*>,<*>,<*>]],
	<appliedenergistics2:fluid_interface> : [[<*>,<*>,<*>],[<*>,null,<*>],[<*>,<*>,<*>]],
	<thermaldynamics:duct_32:1> : [[null,null,null],[<*>,<*>,<*>],[null,null,null]],
} as IIngredient[][][IItemStack];

for key, recipe in removeByRecipeShaped {
	recipes.removeShaped(key,recipe);
}

recipes.remove(<extrautils2:machine>,true);

val avaritiaRemove = [
	<avaritia:resource:6>,
	<avaritia:resource:5>,
] as IItemStack[];

for item in avaritiaRemove {
	mods.avaritia.ExtremeCrafting.remove(item);
}