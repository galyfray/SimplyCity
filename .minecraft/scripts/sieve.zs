#modloaded magneticraft

import crafttweaker.item.WeightedItemStack;
import crafttweaker.item.IItemStack;

import mods.magneticraft.SluiceBox ;
import mods.magneticraft.Sieve ;

val SluiceReMap = {
	<magneticraft:rocky_chunks:13> : [<magneticraft:chunks:13> % 100,<thermalfoundation:material:68> % 15,<thermalfoundation:material:67> % 15],
	<magneticraft:rocky_chunks:7> : [<magneticraft:chunks:7> % 100,<thermalfoundation:material:66> % 15,<thermalfoundation:material:65> % 15],
	<magneticraft:rocky_chunks:2> : [<magneticraft:chunks:2> % 100,<thermalfoundation:material:1> % 15,<minecraft:glowstone_dust> % 2],
	<minecraft:gravel> : [<minecraft:flint> % 100 , <minecraft:flint> % 25 , <minecraft:sand> % 15],
} as WeightedItemStack[][IItemStack] ;

for item ,weightList in SluiceReMap {
	mods.magneticraft.SluiceBox.removeRecipe(item);
	if (weightList.length == 3)
	{
		mods.magneticraft.SluiceBox.addRecipe(item,weightList[0].chance,weightList[0].stack,weightList[1].chance,weightList[1].stack,weightList[2].chance,weightList[2].stack,false) ;
	}
} 

val SluiceRemove = [
	<magneticraft:rocky_chunks:14>,
	<magneticraft:rocky_chunks:11>,
	<magneticraft:rocky_chunks:10>,
	<magneticraft:rocky_chunks:9>,
	<magneticraft:rocky_chunks:5>,
	<magneticraft:rocky_chunks:4>,
	<magneticraft:rocky_chunks:0>,
] as IItemStack[] ;

for item in SluiceRemove {
	mods.magneticraft.SluiceBox.removeRecipe(item);
}

val SieveReMap = {
	<magneticraft:rocky_chunks:13> : [<magneticraft:chunks:13> % 100,<thermalfoundation:material:68> % 25,<thermalfoundation:material:67> % 25],
	<magneticraft:rocky_chunks:7> : [<magneticraft:chunks:7> % 100,<thermalfoundation:material:66> % 25,<thermalfoundation:material:65> % 25],
	<magneticraft:rocky_chunks:2> : [<magneticraft:chunks:2> % 100,<thermalfoundation:material:1> % 25,<minecraft:glowstone_dust> % 4],
	<minecraft:gravel> : [<minecraft:flint> % 100 , <minecraft:flint> % 45 , <minecraft:sand> % 35],
} as WeightedItemStack[][IItemStack] ;

for item ,weightList in SieveReMap {
	mods.magneticraft.Sieve.removeRecipe(item);
	if (weightList.length == 3) 
	{
		mods.magneticraft.Sieve.addRecipe(item, weightList[0].stack, weightList[0].chance,weightList[1].stack,weightList[1].chance,weightList[2].stack,weightList[2].chance,50,false) ;
	}
}