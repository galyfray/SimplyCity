#modloaded integrateddynamics
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var BPErraseCompo ={
	<immersiveengineering:material:8>:[<thaumcraft:mechanism_simple>,<ore:plateIron>,<ore:plateIron>],
	<immersiveengineering:material:9>:[<thaumcraft:mechanism_complex>,<ore:plateSteel>,<ore:plateSteel>],
} as IIngredient[][IItemStack];

for key, items in BPErraseCompo {
	mods.immersiveengineering.Blueprint.removeRecipe(key);
	mods.immersiveengineering.Blueprint.addRecipe("components", key, items);
}

var BPAddThaumic ={
	<thaumcraft:mechanism_simple> : [<thaumcraft:crystal_essence>*4,<ore:plateIron>*2,<ore:plateBrass>*2,<ore:stickTreatedWood>,<extrautils2:endershard>,<minecraft:redstone>,<ore:dustElectrotine>],
	<thaumcraft:mechanism_complex> : [<thaumcraft:mechanism_simple>*2,<minecraft:piston>,<ore:plateThaumium>*2,<thaumcraft:crystal_essence>*4,<extrautils2:endershard>,<minecraft:redstone>,<ore:dustElectrotine>],
	<thaumcraft:morphic_resonator> : [<thaumcraft:crystal_essence>*4,<extrautils2:endershard>,<minecraft:redstone>,<ore:dustElectrotine>,<ore:plateBrass>*2,<ore:stickTreatedWood>,<thaumcraft:nugget:10>,<ore:paneGlass>],
	//: [<thaumcraft:crystal_essence>*2,<extrautils2:endershard>,<minecraft:redstone>,<ore:dustElectrotine>],
}as IIngredient[][IItemStack];

for key, items in BPAddThaumic {
	mods.immersiveengineering.Blueprint.addRecipe("thaumic", key, items);
}

mods.immersiveengineering.ArcFurnace.addRecipe(<simplyjetpacks:metaitemmods:23>,<simplyjetpacks:metaitemmods:22>,null,2000,2048,[<ore:blockBronze>*9],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<simplyjetpacks:metaitemmods:24>,<simplyjetpacks:metaitemmods:23>,null,3000,4096,[<ore:blockBronze>*9],"Alloying");

mods.immersiveengineering.Squeezer.removeByInput(<integrateddynamics:menril_log>);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:menrilresin>*2000, <integrateddynamics:menril_log>*3, 1200);


mods.immersiveengineering.MetalPress.addRecipe(<jaopca:item_gearquartzblack>, <actuallyadditions:item_misc:5> * 4, <immersiveengineering:mold:1>, 2500);