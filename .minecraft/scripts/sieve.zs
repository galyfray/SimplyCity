#modloaded jaopca magneticraft

import crafttweaker.item.WeightedItemStack;
import crafttweaker.item.IItemStack;

import mods.magneticraft.SluiceBox ;

val SieveReMap = {
	<magneticraft:rocky_chunks:13> : [<magneticraft:chunks:13> % 100,<thermalfoundation:material:68> % 15,<thermalfoundation:material:67> % 15],
} as WeightedItemStack[][IItemStack] ;

for item ,weightList in SieveReMap {
	mods.magneticraft.SluiceBox.removeRecipe(item);
	if weightList.length == 3 
	{
		mods.magneticraft.SluiceBox.addRecipe(item,weightList[0].chance,weightList[0].stack,weightList[1].chance,weightList[1].stack,weightList[2].chance,weightList[2].stack,false) ;
	}
} 

val SieveRemove = [
	<jaopca:item_rockychunkardite>,
	<jaopca:item_rockychunkiridium>,
	<jaopca:item_rockychunkplatinum>,
	<jaopca:item_rockychunkuranium>,
	<magneticraft:rocky_chunks:14>,
	<magneticraft:rocky_chunks:11>,
	<magneticraft:rocky_chunks:10>,
] as IItemStack[] ;

for item in SieveRemove {
	mods.magneticraft.SluiceBox.removeRecipe(item);
}