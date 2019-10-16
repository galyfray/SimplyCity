import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);

mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:creosote>, 100, true, 20);

mods.tconstruct.Alloy.addRecipe(<liquid:mana>*20,[<liquid:experience>*20,<liquid:platinum>*10,<liquid:mithril>*10,<liquid:iridium>*20]);

val RemoveMelting = {
	<liquid:iron> :[<minecraft:iron_ore>,<magneticraft:rocky_chunks>,<magneticraft:multiblock_parts:5>,<minecraft:iron_horse_armor>,<minecraft:iron_shovel>,<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_sword>,<minecraft:iron_helmet>,<minecraft:iron_chestplate>,<minecraft:iron_leggings>,<minecraft:iron_boots>],
} as IItemStack[][ILiquidStack] ;

for liquid,items in RemoveMelting {
	for item in items {
		mods.tconstruct.Melting.removeRecipe(liquid,item);
	}
}

mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 288,<magneticraft:chunks:7>);
mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 288,<magneticraft:rocky_chunks:7>);