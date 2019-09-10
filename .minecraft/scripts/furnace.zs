import crafttweaker.item.IIngredient;

val FurnaceRemove = {
	<minecraft:iron_ingot> : [<minecraft:iron_ore>],
	<tconstruct:ingots> : [<tconstruct:ore>,],
	<tconstruct:ingots:1> : [<tconstruct:ore:1>,<jaopca:item_rockychunkardite>,],
	<immersiveengineering:metal:5> : [<immersiveengineering:ore:5>,<jaopca:item_rockychunkuranium>,],
	<thermalfoundation:material:135> : [<thermalfoundation:ore:7>,<jaopca:item_rockychunkiridium>,],
	<thermalfoundation:material:134> : [<thermalfoundation:ore:6>,<jaopca:item_rockychunkplatinum>,],
	<magneticraft:ingots:4> : [<magneticraft:ores:2>],
	<minecraft:gold_ingot> : [<minecraft:gold_ore>],
	<thermalfoundation:material:129> : [<thermalfoundation:ore:1>],
	<thermalfoundation:material:128> : [<thermalfoundation:ore>],
	//<magneticraft:ingots:9> : [],
	<thermalfoundation:material:130> : [<thermalfoundation:ore:2>],
	//<magneticraft:ingots:14> : [],
	//<magneticraft:ingots:11> : [],
	<thermalfoundation:material:133> : [<thermalfoundation:ore:5>],
} as IIngredient[][IIngredient] ;

for item,items in FurnaceRemove {
	if isNull(items[0]) {
		furnace.remove(item) ;
	} else {
		for input in items {
			furnace.remove(item,input);
		}
	}
}