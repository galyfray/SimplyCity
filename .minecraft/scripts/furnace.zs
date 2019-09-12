#modloaded magneticraft immersiveengineering thermalfoundation
import crafttweaker.item.IIngredient;

val FurnaceRemove = {
	<minecraft:iron_ingot> : [<minecraft:iron_ore>,<actuallyadditions:item_misc:20>,<magneticraft:rocky_chunks>,<magneticraft:chunks>,],
	<minecraft:gold_ingot> : [<minecraft:gold_ore>,<magneticraft:rocky_chunks>,<magneticraft:chunks>,],
	<tconstruct:ingots> : [<tconstruct:ore>,],
	<tconstruct:ingots:1> : [<tconstruct:ore:1>,],
	<magneticraft:ingots:4> : [<magneticraft:ores:2>,<magneticraft:rocky_chunks:4>,<magneticraft:chunks:4>,],
	<magneticraft:ingots:5> : [<magneticraft:ores:3>,<magneticraft:rocky_chunks:5>,<magneticraft:chunks:5>,],
	<magneticraft:ingots:9> : [<magneticraft:rocky_chunks:9>,<magneticraft:chunks:9>,],
	<magneticraft:ingots:11> : [<magneticraft:rocky_chunks:11>,<magneticraft:chunks:11>,],
	<magneticraft:ingots:14> : [<magneticraft:rocky_chunks:14>,<magneticraft:chunks:14>,],
	<immersiveengineering:metal:5> : [<immersiveengineering:ore:5>,],
	<ore:ingotCopper> : [<thermalfoundation:ore>,<immersiveengineering:ore>,<magneticraft:ores>,<magneticraft:rocky_chunks:2>,<magneticraft:chunks:2>,],
	<ore:ingotTin> : [<thermalfoundation:ore:1>,<magneticraft:rocky_chunks:13>,<magneticraft:chunks:13>,],
	<ore:ingotSilver> : [<thermalfoundation:ore:2>,<immersiveengineering:ore:3>,<magneticraft:rocky_chunks:12>,<magneticraft:chunks:12>,],
	<ore:ingotLead> : [<thermalfoundation:ore:3>,<immersiveengineering:ore:2>,<magneticraft:rocky_chunks:3>,<magneticraft:chunks:3>,<magneticraft:rocky_chunks:8>,<magneticraft:ores:1>],
	<ore:ingotAluminum> : [<thermalfoundation:ore:4>,<immersiveengineering:ore:1>,<magneticraft:rocky_chunks:7>,<magneticraft:chunks:7>,],
	<ore:ingotNickel> : [<thermalfoundation:ore:5>,<immersiveengineering:ore:4>,<magneticraft:rocky_chunks:10>,<magneticraft:chunks:10>,],
	<thermalfoundation:material:134> : [<thermalfoundation:ore:6>,],
	<thermalfoundation:material:135> : [<thermalfoundation:ore:7>,],
	<thermalfoundation:material:136> : [<thermalfoundation:ore:8>,],
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