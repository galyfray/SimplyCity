val RemoveItem = [
	"thermalfoundation:armor.plate_silver",
	"thermalfoundation:armor.plate_tin",
	"thermalfoundation:armor.plate_copper",
	"thermalfoundation:armor.plate_aluminum" ,
	"thermalfoundation:armor.plate_nickel" ,
	"thermalfoundation:armor.plate_platinum" ,
	"thermalfoundation:armor.plate_steel" ,
	"thermalfoundation:armor.plate_electrum" ,
	"thermalfoundation:armor.plate_invar" ,
	"thermalfoundation:armor.plate_constantan" ,
	"thermalfoundation:armor.plate_bronze" ,
	"thermalfoundation:armor.plate_lead" ,
	"minecraft:iron_chestplate" ,
	"minecraft:golden_chestplate" ,
	"actuallyadditions:item_chest_obsidian" ,
	"thermalfoundation:armor.boots_silver" ,
	"thermalfoundation:armor.boots_tin" ,
	"thermalfoundation:armor.boots_copper" ,
	"thermalfoundation:armor.boots_aluminum" ,
	"thermalfoundation:armor.boots_nickel" ,
	"thermalfoundation:armor.boots_platinum" ,
	"thermalfoundation:armor.boots_steel" ,
	"thermalfoundation:armor.boots_electrum" ,
	"thermalfoundation:armor.boots_invar" ,
	"thermalfoundation:armor.boots_constantan" ,
	"thermalfoundation:armor.boots_bronze" ,
	"thermalfoundation:armor.boots_lead" ,
	"minecraft:iron_boots" ,
	"minecraft:golden_boots" ,
	"actuallyadditions:item_boots_obsidian" ,
	"thermalfoundation:armor.helmet_silver" ,
	"thermalfoundation:armor.helmet_tin" ,
	"thermalfoundation:armor.helmet_copper" ,
	"thermalfoundation:armor.helmet_aluminum" ,
	"thermalfoundation:armor.helmet_nickel" ,
	"thermalfoundation:armor.helmet_platinum" ,
	"thermalfoundation:armor.helmet_steel" ,
	"thermalfoundation:armor.helmet_electrum" ,
	"thermalfoundation:armor.helmet_invar" ,
	"thermalfoundation:armor.helmet_constantan" ,
	"thermalfoundation:armor.helmet_bronze" ,
	"thermalfoundation:armor.helmet_lead" ,
	"minecraft:iron_helmet" ,
	"minecraft:golden_helmet" ,
	"actuallyadditions:item_helm_obsidian" ,
	"thermalfoundation:armor.legs_silver" ,
	"thermalfoundation:armor.legs_tin" ,
	"thermalfoundation:armor.legs_copper" ,
	"thermalfoundation:armor.legs_aluminum" ,
	"thermalfoundation:armor.legs_nickel" ,
	"thermalfoundation:armor.legs_platinum" ,
	"thermalfoundation:armor.legs_steel" ,
	"thermalfoundation:armor.legs_electrum" ,
	"thermalfoundation:armor.legs_invar" ,
	"thermalfoundation:armor.legs_constantan" ,
	"thermalfoundation:armor.legs_bronze" ,
	"thermalfoundation:armor.legs_lead" ,
	"minecraft:iron_leggings" ,
	"minecraft:golden_leggings" ,
	"actuallyadditions:item_pants_obsidian" ,
	"minecraft:iron_ingot",
	"minecraft:diamond",
	"minecraft:iron_sword",
	"minecraft:iron_horse_armor"
] as string[] ;

for id in RemoveItem {
	mods.ltt.LootTable.removeGlobalItem(id);
}

val RemoveMod = [
	"immersiveengineering"
] as string[];

for id in RemoveMod {
	mods.ltt.LootTable.removeModItem(id);
}
